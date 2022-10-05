//
//  OnAppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/28.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Start text.."
    @State var count: Int = 0
    @State var disappearCount: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                            .onDisappear {
                                disappearCount += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text..."
                }
            })
            .onDisappear(perform: {
                myText = "Ending text.."
            })
            .navigationTitle("Appear:\(count) Disappear:\(disappearCount)")
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
