//
//  TodoListViewModel.swift
//  VoiceMemo
//
//  Created by 황성진 on 3/12/24.
//

import SwiftUI

class TodoListViewModel: ObservableObject {
    @Published var todos: [Todo] = []
    @Published var isEditTodoMode: Bool = false
    @Published var removeTodos: [Todo] = []
    @Published var isDisplayRemoveTodoAlert: Bool = false
    
    var removeTodosCount: Int {
        return removeTodos.count
    }
    
    var navigationBarRightBtnMode: NavigationBarType {
        isEditTodoMode ? .complete : .edit
    }
}

extension TodoListViewModel {
    func selectedBoxTapped(_ todo: Todo) {
        if let index = todos.firstIndex(where: { $0 == todo }) {
            todos[index].selected.toggle()
        }
    }
    
    func addTodo(_ todo: Todo) {
        todos.append(todo)
    }
    
    func navigationRightBtnTapped() {
        if isEditTodoMode {
            if removeTodos.isEmpty {
                isEditTodoMode = false
            } else {
                setIsDisplayRemoveTodoAlert(true)
            }
        } else {
            isEditTodoMode = true
        }
    }
    
    func setIsDisplayRemoveTodoAlert(_ isDisplay: Bool) {
        isDisplayRemoveTodoAlert = isDisplay
    }
    
    func todoRemoveSelectedBoxTapped(_ todo: Todo) {
        if let index = removeTodos.firstIndex(of: todo) {
            removeTodos.remove(at: index)
        } else {
            removeTodos.append(todo)
        }
    }
    
    func removeBtnTapped() {
        todos.removeAll { todo in
            removeTodos.contains(todo)
        }
        removeTodos.removeAll()
        isEditTodoMode = false
    }
}
