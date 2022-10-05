//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/27.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: - Properties
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    // MARK: - Body
    
    /*
     Hello,
     I'll be folded
     right now..
     */
    
    var body: some View {
        NavigationView { // START: nav
            ZStack {
                
                // background
                Color.red.ignoresSafeArea()
                
                //foreground
                foregroundLayer
                .navigationTitle("Documentation Bootcamp")
                .navigationBarItems(trailing: Button("ALERT", action: {
                    showAlert.toggle()
                }))
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the alert!")
            }
            }
        } // END: nav
    } // END: SCROLLV
    
    /// This is the foreground layer that holds a scrollView.
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }
    }
    
    // MARK: - Functions
    
    /// Gets an alert with a specified title.
    ///
    /// This function creates and retruns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi))
    /// ```
    ///
    ///- Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: Preview

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
