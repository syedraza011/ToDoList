//
//  ToDoListModel.swift
//  ToDoList
//
//  Created by Syed Raza on 6/17/23.
//

import Foundation
struct ToDo:Hashable {
    let title: String
    let description: String
}
class ToDoListViewModel: ObservableObject {
    @Published var todos = [ToDo]()
    func addToDo (_ todo: ToDo) {
        todos.append(todo)
    }
}
