import SwiftUI

struct EditTaskView: View {
    @Environment(\.dismiss) private var dismiss
    var viewModel: ListViewModel
    @State var task: Task

    let emojis = ["❤️", "🏥", "💊", "💼", "📝", "📅", "🏠", "🍹", "🐶", "🐱", "🐦", "👭", "👶", "💑", "👴👵", "⚖️", "🎉"]


    var body: some View {
        Form {
            Section {
                TextField("Task..", text: $task.title)
                DatePicker("Date", selection: $task.date, displayedComponents: .date)
                DatePicker("Time", selection: $task.hora, displayedComponents: .hourAndMinute)

                Picker("Priority", selection: $task.priority) {
                    ForEach(Priority.allCases, id: \.self) { priority in
                        Text(priority.rawValue).tag(priority)
                    }
                }
                .pickerStyle(.menu)

                Picker("Status", selection: $task.status) {
                    ForEach(Status.allCases, id: \.self) { status in
                        Text(status.rawValue.capitalized).tag(status)
                    }
                }
                .pickerStyle(.menu)
                

                Menu {
                    ForEach(emojis, id: \.self) { emoji in
                        Button {
                            task.icon = emoji
                        } label: {
                            Text(emoji)
                        }
                    }
                } label: {
                    HStack {
                        Text("Icon")
                            .foregroundColor(.black)
                        Spacer()
                        Text(task.icon)
                            .font(.largeTitle)
                    }
                }
            }

      
            Section(header: Text("Notes")) {
                TextEditor(text: Binding($task.notes, default: ""))
                    .frame(height: 150)
            }
        }
        .navigationTitle("Edit Task")
        .toolbar {
            Button("Save") {
                save()
            }
        }
    }

    func save() {
        viewModel.update(task: task)  
        dismiss()
    }
}
