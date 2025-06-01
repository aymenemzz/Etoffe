import Foundation

/// Stores a temporary concept created in Modula.
struct CreationEntry: Identifiable, Codable {
    var id = UUID()
    var title: String
    var date: Date = .now
    var fabricName: String
}
