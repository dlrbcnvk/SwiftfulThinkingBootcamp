//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/26.
//

import SwiftUI

struct DarkModeBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This text is primary")
                        .foregroundColor(.primary)
                    Text("This text is secondary")
                        .foregroundColor(.secondary)
                    Text("This color is black")
                        .foregroundColor(.black)
                    Text("This color is white")
                        .foregroundColor(.white)
                    Text("This color is red")
                        .foregroundColor(.red)
                    Text("This color is globally adaptive")
                        
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
        
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeBootcamp()
                .preferredColorScheme(.dark)
            DarkModeBootcamp()
                .preferredColorScheme(.light)
        }
    }
}
