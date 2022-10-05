
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/24.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .yellow
    
    @State var alertType: MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                .padding(20)
                
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video 🥳"
//                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    
    func getAlert() -> Alert {
        
        switch alertType {
        case .success:
            return Alert(title: Text("This was a success!"), message: nil, dismissButton: .default(Text("OKㄹㄹㄹ"), action: {
                backgroundColor = .green
            }))
        case .error:
            return Alert(title: Text("There was an error!"))
            
        default:
            return Alert(title: Text("ERROR"))
        }
        
//        return Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        
        
        //        return Alert(
        //            title: Text("This is the title"),
        //            message: Text("Here we will describe the error"),
        //            primaryButton: .destructive(Text("DELETE"), action: {
        //                backgroundColor = .red
        //                buttonLabel = "button tapped..."
        //            }),
        //            secondaryButton: .cancel())
        //    }
    }
}


struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
