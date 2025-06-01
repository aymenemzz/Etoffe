import SwiftUI

/// Landing screen presenting quick access to the three workspaces: Modula,
/// Conceptus and Incubatio. Only Modula is functional for now.
struct HomeView: View {
    var body: some View {
        VStack(spacing: 32) {
            Text("ÉTOFFE")
                .font(.largeTitle.weight(.semibold))

            ToggleImmersiveSpaceButton()
                .buttonStyle(.borderedProminent)

            Text("Explore" )
                .foregroundStyle(.secondary)
            Text("Finalize" )
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

#Preview {
    HomeView()
        .environment(AppModel())
}
