//
//  AddItemView.swift
//  ToDoList
//
//  Created by Syed Raza on 6/17/23.
//

import SwiftUI

struct AddItemView: View {
    @State var title: String = ""
    @State var description: String= ""
    @Binding var presentSheet: Bool
    var body: some View {
        VStack {
            TextField("Title",text: $title)
            TextField("Description",text: $descripion)
            Spacer()
            Button{
                
            },Label: {
                Text("Add")
            }
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
