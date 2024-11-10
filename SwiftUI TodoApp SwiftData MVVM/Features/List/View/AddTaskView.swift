import SwiftUI

struct AddTaskView: View {
    @Environment(\.dismiss) private var dismiss
    var viewModel: ListViewModel

    @State var title: String = ""
    @State private var date: Date = Date.now
    @State private var hora: Date = Date.now
    @State var priority: Priority = .low
    @State var status: Status = .todo
    @State var icon: String = "📋"
    @State var notes: String = ""

    let emojis = ["❤️", "🏥", "💊", "💼", "📝", "📅", "🏠", "🍹", "🐶", "🐱", "🐦", "👭", "👶", "💑", "👴👵", "⚖️", "🎉"]

    var body: some View {
        Form {
            Section {
                TextField("Task..", text: $title)
                DatePicker("Date", selection: $date, displayedComponents: .date)
                DatePicker("Time", selection: $hora, displayedComponents: .hourAndMinute)
                Picker("Priority", selection: $priority) {
                    ForEach(Priority.allCases, id: \.self) { priority in
                        Text(priority.rawValue).tag(priority)
                    }
                }
                Picker("Status", selection: $status) {
                    ForEach(Status.allCases, id: \.self) { status in
                        Text(status.rawValue.capitalized).tag(status)
                    }
                }
        
                Menu {
                    ForEach(emojis, id: \.self) { emoji in
                        Button {
                            icon = emoji
                        } label: {
                            Text(emoji)
                        }
                    }
                } label: {
                    HStack {
                        Text("Icon")
                            .foregroundStyle(.black)
                        Spacer()
                        Text(icon)
                            .font(.largeTitle)
                    }
                }
            }


            Section(header: Text("Notes")) {
                TextEditor(text: $notes)
                    .frame(height: 150) 
            }
        }
        .navigationTitle("Add Task")
        .toolbar {
            Button("Save") {
                viewModel.add(
                    title: title,
                    date: date,
                    hora: hora,
                    priority: priority,
                    status: status,
                    icon: icon,
                    notes: notes
                )
                dismiss()
            }
        }
    }
}
