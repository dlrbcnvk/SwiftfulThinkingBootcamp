//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/18.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstacks -> vertical
    // Hstacks -> horizontal
    // Zstacks -> zIndex (back to front)
    var body: some View {
        
//        VStack(alignment: .center, spacing: nil) {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200, alignment: .center)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150, alignment: .center)
//
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100, alignment: .center)
//        }
        
        
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//
//            VStack(alignment: .leading, spacing: 16) {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150, alignment: .center)
//
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(Color.purple)
//                    .frame(width: 50, height: 50)
//
//                    Rectangle()
//                        .fill(Color.pink)
//                        .frame(width: 75, height: 75)
//
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
//        }
        
//        VStack(alignment: .center, spacing: 20) {
//            Text("5")
//                .font(.largeTitle)
//            Text("Items in your cart:")
//                .font(.caption)
//                .foregroundColor(.gray)
//        }
        
        VStack(spacing: 50) {
            
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
