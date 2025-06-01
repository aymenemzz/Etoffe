import SwiftUI

struct HomeView: View {
    @Environment(AppModel.self) private var appModel
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace

    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                Spacer()
                VStack(spacing: 20) {
                    HomeActionButton(title: "Créer") {
                        handleCreateTap()
                    }
                    NavigationLink(destination: Text("Conceptus Gallery (placeholder)")) {
                        HomeActionLabel(title: "Explorer")
                    }
                    NavigationLink(destination: Text("Incubatio Scene (placeholder)")) {
                        HomeActionLabel(title: "Finaliser")
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle("ÉTOFFE")
        }
    }

    private func handleCreateTap() {
        Task { @MainActor in
            switch appModel.immersiveSpaceState {
                case .open:
                    break
                case .closed:
                    appModel.immersiveSpaceState = .inTransition
                    switch await openImmersiveSpace(id: appModel.immersiveSpaceID) {
                        case .opened:
                            break
                        default:
                            appModel.immersiveSpaceState = .closed
                    }
                case .inTransition:
                    break
            }
        }
    }
}

private struct HomeActionButton: View {
    var title: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            HomeActionLabel(title: title)
        }
    }
}

private struct HomeActionLabel: View {
    var title: String

    var body: some View {
        Text(title)
            .font(.title2.weight(.medium))
            .frame(maxWidth: .infinity)
            .frame(height: 80)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 16, style: .continuous).stroke(Color.white.opacity(0.15)))
    }
}

#Preview {
    HomeView()
        .environment(AppModel())
}
