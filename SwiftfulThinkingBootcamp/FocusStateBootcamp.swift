//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/29.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingFields: Hashable {
        case username
        case password
    }
    
//    @FocusState private var usernameInFocus: Bool
//    @FocusState private var passwordInFocus: Bool
    @State private var username: String = ""
    @State private var password: String = ""
    @FocusState private var fieldInFocus: OnboardingFields?
    
    var body: some View {
        ZStack {
            
            Color.yellow.ignoresSafeArea()
            
            VStack(spacing: 30) {
                TextField("Add your name here...", text: $username)
                    .focused($fieldInFocus, equals: .username)
//                    .focused($usernameInFocus)
                    .padding(.leading)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.brightness(0.3))
                    .cornerRadius(10)
                    .textInputAutocapitalization(.never)
                    .keyboardType(.emailAddress)
                
                SecureField("Add your password here...", text: $password)
                    .focused($fieldInFocus, equals: .password)
//                    .focused($passwordInFocus)
                    .padding(.leading)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.brightness(0.3))
                    .cornerRadius(10)
                    .textInputAutocapitalization(.never)
                    .keyboardType(.emailAddress)
                    .submitLabel(.join)
                    
                    
                
//                Button("TOGGLE FOCUS STATE") {
//                    passwordInFocus.toggle()
//                }
                
                Button("SIGN UP 🚀") {
                    let usernameIsValid = !username.isEmpty
                    let passwordIsValid = !password.isEmpty
                    
                    if usernameIsValid && passwordIsValid {
                        print("SIGN UP")
                    } else if usernameIsValid {
                        fieldInFocus = .password
//                        usernameInFocus = false
//                        passwordInFocus = true
                    } else {
                        fieldInFocus = .username
//                        usernameInFocus = true
//                        passwordInFocus = false
                    }
                }
            }
            
            .padding(40)
//            .onAppear {
//                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                    self.usernameInFocus = true
//                }
//            }
        }
        
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
