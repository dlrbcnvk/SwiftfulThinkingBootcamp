//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/29.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUsername: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUsername ?? "Add name here")
            
            if let name = currentUsername {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Emily"
                currentUsername = name
            }
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
