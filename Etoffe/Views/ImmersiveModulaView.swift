import SwiftUI
import RealityKit
import RealityKitContent

/// Immersive scene where the user drapes virtual fabrics over a mannequin.
/// This view is launched inside an ImmersiveSpace.
struct ImmersiveModulaView: View {
    @State private var selectedFabric: FabricModel? = nil
    @State private var mannequinEntity: Entity?

    var body: some View {
        RealityView { content in
            if let mannequin = try? await Entity(named: "Mannequin", in: realityKitContentBundle) {
                mannequinEntity = mannequin
                content.add(mannequin)
            }
        } update: { content in
            // Apply a simple texture overlay when the fabric selection changes
            if let mannequinEntity, let fabric = selectedFabric {
                let material = UnlitMaterial(color: fabric.color)
                mannequinEntity.model?.materials = [material]
            }
        }
        .overlay(alignment: .bottom) {
            FabricPickerView(selectedFabric: $selectedFabric)
                .padding()
        }
    }
}

#Preview(immersionStyle: .mixed) {
    ImmersiveModulaView()
}
