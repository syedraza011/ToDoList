//
//  ContentView.swift
//  ToDoList
//
//  Created by Syed Raza on 6/17/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel=ToDoListViewModel()
    @State var presentSheet = false
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.todos, id:\.self){ item in
                    Text(item.title)
                }
            }
        }.navigationTitle("Todo's'")
            .navigationBarItems(trailing: Button(action: {
                presentSheet.toggle()
            }, label: {
                Image(systemName: "plus")
                                                 
                                                 }))
            .sheet(isPresented: $presentSheet) {
                AddItemView(presentSheet: $presentSheet)
     Text(item)
       
    }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
