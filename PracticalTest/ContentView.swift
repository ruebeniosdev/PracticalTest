//
//  ContentView.swift
//  PracticalTest
//
//  Created by RUEBEN on 10/28/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = false
    @State private var showingAddSheet = false
    @State private var newTaskTitle = ""
    @State private var tasks: [Task] = []
    var body: some View {
        NavigationStack {
            Group {
                if isLoading {
                    VStack(spacing: 12) {
                        ProgressView()
                            .scaleEffect(1.5)
                        Text("Fetching your tasks...")
                            .foregroundStyle(.secondary)
                    }
                } else if tasks.isEmpty {
                    VStack(spacing: 20) {
                        Image(systemName: "tray.and.arrow.down")
                            .font(.system(size: 60))
                            .foregroundStyle(.gray)
                        Text("Your task list is empty")
                        Text("Tap on the + button to add something new")
                            .font(.headline)
                            .foregroundStyle(.secondary)
                    }
                } else {
                    List {
                        ForEach(tasks) { task in
                            Text(task.title)
                        }
                        .onDelete(perform: deleteTask)
                    }
                    .listStyle(.insetGrouped)
                }
            }
            .navigationTitle("Task Manager")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showingAddSheet.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .font(.title3)
                    }

                }
            }
            .sheet(isPresented: $showingAddSheet) {
                NavigationStack {
                    Form {
                        TextField("Task Name", text: $newTaskTitle)
                    }
                    .navigationTitle("New Task")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            Button {
                         showingAddSheet = false
                            } label: {
                                Image(systemName: "xmark")
                            }

                        }
                        ToolbarItem(placement: .topBarTrailing) {
                            Button {
                        addTask()
                            } label: {
                             Text("Add")
                            }

                        }
                    }
                }
            }
            .presentationDetents([.fraction(0.3)])
        }
    }
    func addTask() {
        let newTask = Task(title: newTaskTitle)
        tasks.append(newTask)
        newTaskTitle = ""
        showingAddSheet = false
    }
    func deleteTask(at offsets: IndexSet){
        tasks.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
