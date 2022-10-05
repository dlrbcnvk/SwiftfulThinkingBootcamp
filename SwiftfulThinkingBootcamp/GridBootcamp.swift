//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/21.
//

import SwiftUI

struct GridBootcamp: View {
    
    let colors: [Color] = [.red, .orange, .yellow, .green, .blue, Color(uiColor: #colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1)), .purple]
    
    let columns: [GridItem] = [
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: 8, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(.orange)
                .frame(width: .infinity, height: 400, alignment: .center)
            
            LazyVGrid(columns: columns, alignment: .center, spacing: 8, pinnedViews: [.sectionFooters, .sectionHeaders], content: {
                
                Section {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .fill(colors.randomElement() ?? .teal)
                            .frame(height: 50)
                    }
                } header: {
                    Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.black)
                } footer: {
                    Text("Footer 1")
                        .font(.title2)
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .background(Color.brown)
                        .padding(.horizontal)
                }
                
                Spacer(minLength: 50)
                
                Section {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .fill(colors.randomElement() ?? .teal)
                            .frame(height: 50)
                            .cornerRadius(8)
                    }
                } header: {
                    Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(16)
                        .background(Color.indigo)
                        .padding()
                }
            })
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
