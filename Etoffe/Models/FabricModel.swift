import SwiftUI

/// Simple representation of a fabric choice used for draping.
struct FabricModel: Identifiable {
    let id = UUID()
    let name: String
    let color: Color
}

extension FabricModel {
    /// Placeholder fabrics used during early prototyping
    static let placeholders: [FabricModel] = [
        FabricModel(name: "Red", color: .red),
        FabricModel(name: "Green", color: .green),
        FabricModel(name: "Blue", color: .blue)
    ]
}
