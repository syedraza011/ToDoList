//
//  ContentView.swift
//  ToDoList
//
//  Created by Syed Raza on 6/17/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel=ToDoListViewModel()
    @State var PresentSheet= false
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.todos, id:\.self){
                    item in
                    Text(item.title)
                }
            }
        }.navigationTitle(Todo's')
            .navigationBarItems(trailing: Button(action: {
                PresentSheet.toggle()
            }, label: Image(systemName: "plus")
                                                 
                                                 }))
            .sheet(isPresented: $PresentSheet) {
                viewModel
     Text(item)
       
    }
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
