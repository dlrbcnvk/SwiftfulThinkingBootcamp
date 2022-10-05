//
//  TerneryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/23.
//

import SwiftUI

struct TerneryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            Text(isStartingState ? "Starting State" : "Ending State")
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? .red : .blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 20)
            Spacer()
        }
    }
}

struct TerneryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TerneryBootcamp()
    }
}
