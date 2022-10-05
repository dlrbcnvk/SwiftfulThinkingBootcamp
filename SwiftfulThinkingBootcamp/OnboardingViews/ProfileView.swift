//
//  ProfileView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/29.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUsername: String?
    @AppStorage("age") var currentAge: Int?
    @AppStorage("gender") var currentGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            Text(currentUsername ?? "Your name here")
            Text("This user is \(currentAge ?? 0)")
            Text("Gender is \(currentGender ?? "unknown")")
            
            Text("SIGN OUT")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(10)
                .onTapGesture {
                    withAnimation(.spring()) {
                        signOut()                        
                    }
                }
        }
        .font(.headline)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
    
    func signOut(){
        currentUsername = nil
        currentAge = nil
        currentGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
