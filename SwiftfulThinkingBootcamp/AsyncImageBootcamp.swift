//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/29.
//

import SwiftUI

// AsyncImagePhase
/*
 case empty -> No image is loaded.
 case success(Image) -> An image successfully loaded.
 case failure(Error) -> An image failed to load with an error.
 */

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            
            }
        }
        
//        AsyncImage(url: url, content: { image in
//            image
//                .resizable()
//                .scaledToFit()
//                .frame(width: 200, height: 200)
//                .cornerRadius(20)
//        }, placeholder: {
//            ProgressView()
//        })
//            .frame(width: 100, height: 100)
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
