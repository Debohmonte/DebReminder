import SwiftUI

struct ListView: View {
    @ObservedObject var viewModel: ListViewModel = ListViewModel()
    @State var keyword: String = ""
    
    var body: some View {
        List {
            ForEach(viewModel.tasks) { task in
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
                        
                        // Cambiar el estado con un clic
                        Text(task.status.rawValue)
                            .font(.caption)
                            .foregroundStyle(.white)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 2)
                            .background(task.status == .done ? Color.green : Color.red)
                            .clipShape(RoundedRectangle(cornerRadius: 5.0))
                            .padding(.vertical, 2)
                            .onTapGesture {
                                toggleTaskStatus(task)  // Llamar a la función para alternar el estado
                            }
                    }
                }
                .swipeActions(edge: .leading, allowsFullSwipe: false) {
                    NavigationLink {
                        EditTaskView(viewModel: viewModel, task: task)
                    } label: {
                        Text("Edit")
                    }
                    .tint(.blue)
                }
            }
            .onDelete(perform: onDelete)
        }
        .navigationTitle("DebRemainder")
        .searchable(text: $keyword)
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                NavigationLink {
                    AddTaskView(viewModel: viewModel)
                } label: {
                    Image(systemName: "plus")
                }
  
                NavigationLink {
                    CalendarView(viewModel: viewModel)
                } label: {
                    Image(systemName: "calendar")
                }
            }
        }
        .onChange(of: keyword) {
            viewModel.searchTask(keyword: keyword)
        }
    }

    private func onDelete(at indexSet: IndexSet) {
        for index in indexSet {
            let task = viewModel.tasks[index]
            viewModel.delete(task: task)
        }
    }

    // Función que alterna el estado de la tarea
    private func toggleTaskStatus(_ task: Task) {
        // Alternar entre TODO y DONE
        task.status = (task.status == .todo) ? .done : .todo
        viewModel.update(task: task)  // Actualizar la tarea en el viewModel
    }
}
