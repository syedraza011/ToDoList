//
//  AddItemView.swift
//  ToDoList
//
//  Created by Syed Raza on 6/17/23.
//

import SwiftUI

struct AddItemView: View {
    @State var title: String = ""
    @State var description: String = ""
    
    @ObservedObject var viewModel: ToDoListViewModel
    @Binding var presentSheet: Bool
    var body: some View {
        VStack {
            TextField("Title",text: $title)
            TextField("Description",text: $description)
            Spacer()
            Button{
               
                viewModel.addToDo(ToDo(title: title, description: description))
                    presentSheet.toggle()
            } label: {
                Text("Add")
            }
        }
    }
}
//
//struct AddItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddItemView()
//    }
//}
