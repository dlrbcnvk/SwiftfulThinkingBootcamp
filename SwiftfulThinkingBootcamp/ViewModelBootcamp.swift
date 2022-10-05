//
//  ViewModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/28.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init(){
        getFruits()
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Orange", count: 2)
        let fruit2 = FruitModel(name: "banana", count: 8)
        let fruit3 = FruitModel(name: "Watermelon", count: 66)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruits.append(fruit1)
            self.fruits.append(fruit2)
            self.fruits.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet){
        fruits.remove(atOffsets: index)
    }
    
    func addFruit(name: String, count: Int) {
        self.fruits.append(FruitModel(name: name, count: count))
    }
}

struct ViewModelBootcamp: View {
    
    @StateObject var viewModel: FruitViewModel = FruitViewModel()
     
    var body: some View {
        NavigationView {
            VStack(spacing: 8) {
                
                Button("Add") {
                    viewModel.addFruit(name: "dd", count: 55)
                }
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.green.opacity(0.2))
                .cornerRadius(10)
                .padding(.horizontal)
                
                List {
                    if viewModel.isLoading {
                        ProgressView()
                    } else {
                        ForEach(viewModel.fruits) { fruit in
                            HStack {
                                Text("\(fruit.count)")
                                    .foregroundColor(.red)
                                Text(fruit.name)
                                    .font(.headline)
                            }
                        }
                        .onDelete(perform: viewModel.deleteFruit)
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Fruit List")
                .navigationBarItems(trailing: NavigationLink(destination: SecondView(viewModel: viewModel), label: {
                    Image(systemName: "arrow.right")
                        .font(.title)
            }))
            }
//            .onAppear {
//                viewModel.getFruits()
//            }
        }
    }
}


struct SecondView: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: FruitViewModel
    
    init(viewModel: FruitViewModel) {
        self.viewModel = viewModel
//        let fruit = FruitModel(name: "kiwi", count: 2)
//        self.viewModel.addFruit(name: "kiwi", count: 4)
//        self.viewModel.fruits.append(fruit)
    }
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(viewModel.fruits) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                
                Spacer()
                Spacer()
                
                Button("Add") {
                    viewModel.addFruit(name: "Mango", count: 77)
                }
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black.opacity(0.7))
                .padding()
                .cornerRadius(10)
                
                
            }
            
            
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
        //        SecondView()
    }
}
