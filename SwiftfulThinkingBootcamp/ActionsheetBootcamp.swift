//
//  ActionsheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/25.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .tint(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            
        }
        let cancelButton: ActionSheet.Button = .cancel()
        
        let title = Text("What would you like to do?")
        
        switch actionSheetOption {
            
        case .isMyPost:
            return ActionSheet(title: title, message: nil, buttons: [shareButton, reportButton, deleteButton, cancelButton])
        case .isOtherPost:
            return ActionSheet(title: title, message: nil, buttons: [shareButton, reportButton, cancelButton])
        }
        
        
//        return ActionSheet(title: Text("This is the title!"))
        
//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel()
//
//        return ActionSheet(title: Text("This is the title!!!"), message: Text("이걸 들어야 하나 마나 자꾸 deprecated 된 게 많이 보이네"), buttons: [button1, button2, button3])
        
    }
}

struct ActionsheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionsheetBootcamp()
    }
}
