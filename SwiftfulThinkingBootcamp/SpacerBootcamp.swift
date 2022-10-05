//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/18.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//        HStack(spacing: 0) {
//
//            Spacer(minLength: 0)
//                .frame(height: 10)
//
//            Rectangle()
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//        }
//        .padding(.horizontal, 20)
//        .background(Color.yellow)
//        .padding(.vertical, 20)
//        .background(Color.blue)
        
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                Image(systemName: "gear")
            }
            .font(.title)
            .background(Color.yellow)
            .padding(.horizontal)
            .background(Color.teal)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 55)
        }
        .background(Color.green)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
