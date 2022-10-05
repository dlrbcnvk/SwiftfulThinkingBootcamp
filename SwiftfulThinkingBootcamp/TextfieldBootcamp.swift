//
//  TextfieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/25.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.1).cornerRadius(20))
                    .foregroundColor(.red)
                    .font(.headline)
                    .lineLimit(2)
                    .textInputAutocapitalization(.never)
                
                
                Button {
                    if textIsAppopriate() {
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppopriate() ? Color.blue : Color.gray)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppopriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
        
    }
    
    func textIsAppopriate() -> Bool {
        // check text
        if textFieldText.count >= 3 {
            return true
        } else {
            return false
        }
    }
    
    func saveText(){
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextfieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootcamp()
    }
}
