import SwiftUI

struct CalendarView: View {
    @ObservedObject var viewModel: ListViewModel
    @State private var selectedDate: Date = Date()
    
    var body: some View {
        VStack {
      
            DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(.graphical)
                .padding()
            
         
            List {
                ForEach(viewModel.tasks.filter { Calendar.current.isDate($0.date, inSameDayAs: selectedDate) }) { task in
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
                                .background(task.status == .done ? .green : .red)
                                .clipShape(RoundedRectangle(cornerRadius: 5.0))
                                .padding(.vertical, 2)
                        }
                    }
                }
            }
        }
        .navigationTitle("Task Calendar")
    }
}
