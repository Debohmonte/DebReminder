
import Foundation
import SwiftData

enum Priority: String, Codable, CaseIterable {
    case low = "⭐️"
    case medium = "⭐️⭐️"
    case high = "⭐️⭐️⭐️"
}

enum Status: String, Codable, CaseIterable {
    case done = "DONE"
    case todo = "TODO"
}

@Model
class Task {
    var title: String
    var date: Date
    var hora: Date
    var priority: Priority
    var status: Status
    var icon: String
    var notes: String?
    init(title: String, date: Date, hora: Date, priority: Priority, status: Status, icon: String = "📋", notes: String? = nil) {
        self.title = title
        self.date = date
        self.hora = hora
        self.priority = priority
        self.status = status
        self.icon = icon
        self.notes = notes  
    }
}
