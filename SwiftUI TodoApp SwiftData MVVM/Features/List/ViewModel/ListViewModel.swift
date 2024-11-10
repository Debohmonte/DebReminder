import Foundation
import SwiftData

class ListViewModel: ObservableObject {
    var modelContext: ModelContext?

    @Published var tasks: [Task] = []

    init(modelContext: ModelContext? = nil) {
        self.modelContext = modelContext
        fetchTasks()
    }

    func fetchTasks() {
        do {
            let descriptor = FetchDescriptor<Task>(sortBy: [SortDescriptor(\.date, order: .reverse)])
            self.tasks = try modelContext?.fetch(descriptor) ?? []
        } catch {
            print("Fetch failed: \(error.localizedDescription)")
        }
    }

    func add(title: String, date: Date, hora: Date, priority: Priority, status: Status, icon: String, notes: String) {
        let task = Task(title: title, date: date, hora: hora, priority: priority, status: status, icon: icon, notes: notes)
        modelContext?.insert(task)
        do {
            try modelContext?.save()
            fetchTasks()
        } catch {
            print("Failed to add task: \(error.localizedDescription)")
        }
    }

    func delete(task: Task) {
        modelContext?.delete(task)
        do {
            try modelContext?.save()
            fetchTasks()
        } catch {
            print("Failed to delete task: \(error.localizedDescription)")
        }
    }

    func update(task: Task) {
        do {
            try modelContext?.save()
            fetchTasks()
        } catch {
            print("Failed to update task: \(error.localizedDescription)")
        }
    }

    func searchTask(keyword: String) {
        if keyword.isEmpty {
            fetchTasks()
        } else {
            do {
                let descriptor = FetchDescriptor<Task>(
                    predicate: #Predicate<Task> { task in
                        task.title.contains(keyword)
                    },
                    sortBy: [SortDescriptor(\.date, order: .reverse)]
                )
                self.tasks = try modelContext?.fetch(descriptor) ?? []
            } catch {
                print("Failed to search: \(error.localizedDescription)")
            }
        }
    }
}
