//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/21.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Title goes here..")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ForEach(0..<20) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(
            Color.red
//                .edgesIgnoringSafeArea(.all)
                .ignoresSafeArea(edges: .top)
        )
        
        
//        ZStack {
//            // background
//            Color.yellow
//
//            // foreground
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .background(Color.green, ignoresSafeAreaEdges: [.bottom])
//            .background(Color.red)
//        }
////                .ignoresSafeArea()
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
