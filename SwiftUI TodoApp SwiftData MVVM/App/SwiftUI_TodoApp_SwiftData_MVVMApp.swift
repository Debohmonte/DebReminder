import SwiftUI
import SwiftData

@main struct SwiftUI_TodoApp_SwiftData_MVVMApp : App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Task.self
        ])
        do {
            let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error.localizedDescription)")
        }
    }()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView(viewModel: .init(modelContext: .init(sharedModelContainer)))
            }
        }
        .modelContainer(sharedModelContainer)
    }
}
