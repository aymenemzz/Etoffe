import SwiftUI

/// Horizontal picker allowing the user to choose a fabric color or texture.
struct FabricPickerView: View {
    @Binding var selectedFabric: FabricModel?

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(FabricModel.placeholders) { fabric in
                    Circle()
                        .fill(fabric.color)
                        .frame(width: 44, height: 44)
                        .overlay(
                            Circle().stroke(Color.white.opacity(selectedFabric?.id == fabric.id ? 1 : 0), lineWidth: 3)
                        )
                        .onTapGesture {
                            selectedFabric = fabric
                        }
                }
            }
        }
        .background(.ultraThinMaterial, in: Capsule())
    }
}

#Preview {
    FabricPickerView(selectedFabric: .constant(nil))
}
