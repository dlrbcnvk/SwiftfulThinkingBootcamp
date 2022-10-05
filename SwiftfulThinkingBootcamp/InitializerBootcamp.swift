//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/21.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.backgroundColor = .red
            self.title = "Apple"
        } else if fruit == .orange {
            self.backgroundColor = .orange
            self.title = "Orange"
        } else {
            self.backgroundColor = .black
            self.title = "What?"
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InitializerBootcamp(count: 6, fruit: .apple)
            InitializerBootcamp(count: 22, fruit: .orange)
        }
    }
}
