import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var title: String
}

struct ContentView: View {
    @State private var tasks = [Task]()
    @State private var newTask = ""

    var body: some View {
        VStack {
            TextField("Enter task", text: $newTask)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Add Task") {
                tasks.append(Task(title: newTask))
                newTask = ""
            }
            .padding()
            
            List(tasks) { task in
                Text(task.title)
            }
        }
    }
}
