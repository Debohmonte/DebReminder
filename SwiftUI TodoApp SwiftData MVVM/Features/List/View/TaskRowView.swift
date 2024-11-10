import SwiftUI

struct TaskRowView: View {
    var task: Task
    
    var body: some View {
        HStack {
            Text(task.icon)
                .font(.largeTitle)
            VStack(alignment: .leading) {
                Text(task.title)
                    .font(.headline)
                Text("\(task.date.formattedDate()) at \(task.hora.formattedTime())")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                if let notes = task.notes, !notes.isEmpty {
                    Text(notes)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text(task.priority.rawValue)
                Text(task.status.rawValue)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 2)
                    .background(task.status == .done ? .red : .green)
                    .clipShape(RoundedRectangle(cornerRadius: 5.0))
                    .padding(.vertical, 2)
            }
        }
    }
}
