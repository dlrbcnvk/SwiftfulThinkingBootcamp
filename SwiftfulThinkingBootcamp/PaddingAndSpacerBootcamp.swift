//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/18.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    
    var temp: String = "학교 가기 싫어..."
    
    var body: some View {
//        Text(temp)
////            .frame(width: 100, height: 100)
//            .background(Color.yellow)
//            .padding(.all, 20)
//            .padding(.leading, 12)
//            .background(Color.blue)
            
//        Text(temp)
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(Color.red)
//            .padding(.leading, 20)
        
        VStack(alignment: .leading) {
            Text(temp)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what I will mind in my mind. It is multiple lines and we will apign the text to the leading edge.")
                
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 10)
        )
        .padding()
//        .background(Color.teal)
        .padding(.horizontal, 10)
//        .background(Color.green)
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
