//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/23.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            Button("Is Loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
        }
        
        
//        VStack(spacing: 20) {
//
//            Button("Circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//
//            Button("Rectangle Button: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            } else if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//                    .foregroundColor(.yellow)
//            }
//
//            Spacer()
//
//        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
