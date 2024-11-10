import SwiftUI

struct CalendarGridView: View {
    @ObservedObject var viewModel: ListViewModel
    @State private var selectedDate: Date = Date()
    

    private var currentMonthDates: [Date] {
        let calendar = Calendar.current
        guard let monthRange = calendar.range(of: .day, in: .month, for: selectedDate) else {
            return []
        }
        let startOfMonth = calendar.date(from: calendar.dateComponents([.year, .month], from: selectedDate))!
        return monthRange.compactMap { day -> Date? in
            calendar.date(byAdding: .day, value: day - 1, to: startOfMonth)
        }
    }
    
    var body: some View {
        VStack {
            
            HStack {
                Button(action: { changeMonth(by: -1) }) {
                    Image(systemName: "chevron.left")
                }
                Spacer()
                Text(selectedDate, formatter: DateFormatter.monthAndYearFormatter)
                    .font(.title)
                Spacer()
                Button(action: { changeMonth(by: 1) }) {
                    Image(systemName: "chevron.right")
                }
            }
            .padding()
            

            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 7)) {
         
                ForEach(Calendar.current.shortWeekdaySymbols, id: \.self) { weekday in
                    Text(weekday)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                }
                
             
                ForEach(currentMonthDates, id: \.self) { date in
                    let hasTask = viewModel.tasks.contains { Calendar.current.isDate($0.date, inSameDayAs: date) }
                    let isPast = date < Date()
                    
                    Text("\(Calendar.current.component(.day, from: date))")
                        .frame(width: 40, height: 40)
                        .background(hasTask ? (isPast ? Color.red.opacity(0.5) : Color.green.opacity(0.7)) : Color.clear)
                        .clipShape(Circle())
                        .onTapGesture {
                            selectedDate = date
                        }
                        .foregroundColor(Calendar.current.isDateInToday(date) ? .blue : .primary)
                }
            }
            
            
            List {
                ForEach(viewModel.tasks.filter { Calendar.current.isDate($0.date, inSameDayAs: selectedDate) }) { task in
                    TaskRowView(task: task)
                }
            }
        }
        .navigationTitle("Task Calendar")
    }
    

    private func changeMonth(by value: Int) {
        if let newDate = Calendar.current.date(byAdding: .month, value: value, to: selectedDate) {
            selectedDate = newDate
        }
    }
}


extension DateFormatter {
    static var monthAndYearFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM yyyy"
        return formatter
    }
}
