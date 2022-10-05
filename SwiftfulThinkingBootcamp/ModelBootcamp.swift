//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/28.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayname: String
    let username: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(displayname: "Nick", username: "aaa", followerCount: 0, isVerified: true),
        UserModel(displayname: "Jay", username: "holy", followerCount: 10, isVerified: false),
        UserModel(displayname: "Amen", username: "Jesus", followerCount: 40, isVerified: true),
        UserModel(displayname: "what", username: "home", followerCount: 60, isVerified: false),
        UserModel(displayname: "mac", username: "os", followerCount: 50, isVerified: false),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading) {
                            Text(user.displayname)
                                .font(.headline)
                            Text("@\(user.username)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
