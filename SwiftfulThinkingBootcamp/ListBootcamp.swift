//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/24.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = ["apple", "orange", "banana", "peach"]
    
    @State var veggies: [String] = ["tomato", "potato", "carrot"]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .font(.caption)
                            .foregroundColor(.white)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(.pink)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                } header: {
                    HStack {
                        Text("fruits")
                        Image(systemName: "flame.fill")
                    }
                }
                .textCase(nil)
                .font(.headline)
                .foregroundColor(.orange)
                
                Section {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                } header: {
                    Text("Veggies")
                }
                .textCase(nil)
                

            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton())
            .navigationBarItems(trailing: addButton)
            
            
        }
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indexSet: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indexSet, toOffset: newOffset)
    }
    
    func add(){
        fruits.append(fruits.randomElement() ?? "Coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
