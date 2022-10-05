//
//  EnvironmentObjectBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/28.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    
    @Published var arr: [String] = []
    
    init(){
        getData()
    }
    
    func getData(){
        self.arr.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.arr, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            // background
            Color.orange.ignoresSafeArea()
            
            // foreground
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
            }

            
                
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // background
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            // foreground
            ScrollView {
                
                VStack(spacing: 20) {
                    ForEach(viewModel.arr, id: \.self) { item in
                        Text(item)
                            .onTapGesture {
                                addData()
                            }
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
    
    func addData(){
        viewModel.arr.append("video")
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
//        DetailView(selectedItem: "iPhone")
//        FinalView()
    }
}
