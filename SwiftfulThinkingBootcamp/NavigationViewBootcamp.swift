//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    
    @State var fireColor: Color = .black
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello, world!") {
                    MyOtherScreen()
                }
                
                Text("Hello World!!")
                Text("Hello World!!")
                Text("Hello World!!")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                Image(systemName: "person.fill")
                                    .padding(.trailing, 24)
                                Image(systemName: "person.fill")
                                    .padding(.trailing, 24)
                                Image(systemName: "person.fill")
                                    .padding(.trailing, 24)
                                Image(systemName: "person.fill")
                                    .padding(.trailing, 24)
                                Image(systemName: "person.fill")
                                    .padding(.trailing, 24)
                                Image(systemName: "person.fill")
                                    .padding(.trailing, 24)
                                Image(systemName: "person.fill")
                                    .padding(.trailing, 24)
                            }
                        }
                        
                        Image(systemName: "flame.fill")
                            .foregroundColor(fireColor)
                            .onTapGesture {
                                fireColor = fireColor == .black ? .red : .black
                            }
                    }
                    ,
                trailing: NavigationLink(
                    destination: {
                    MyOtherScreen()
                }, label: {
                    Image(systemName: "gear")
                })
                .tint(.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
//                .navigationBarHidden(true)
            
            VStack {
                
                Button("Back Button") {
                    self.dismiss()
                }.padding(.bottom, 20)
                
                NavigationLink("Click here") {
                    Text("3rd screen!")
                        .font(.largeTitle)
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
