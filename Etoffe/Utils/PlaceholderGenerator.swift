import SwiftUI

/// Utility providing placeholder RealityKit entities used during development.
enum PlaceholderGenerator {
    static func mannequinEntity() async -> Entity? {
        try? await Entity(named: "Mannequin", in: realityKitContentBundle)
    }
}
