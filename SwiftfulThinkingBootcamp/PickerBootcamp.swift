//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/25.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    var customLabel: some View {
        HStack {
            Text("Filter: ")
            Text(selection)
        }
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .padding(.horizontal)
        .background(Color.blue)
        .cornerRadius(10)
        .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
    }
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        Picker(selection: $selection) {
            ForEach(filterOptions.indices) { index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
            }
        } label: {
            Text("Picker")
        }
        .pickerStyle(SegmentedPickerStyle())

        
//        Picker(selection: $selection) {
//            ForEach(filterOptions, id: \.self) { option in
//                HStack {
//                    Text(option).tag(option)
//                    Image(systemName: "heart.fill")
//                }
//            }
//        } label: {
//            HStack {
//                Text("Filter: ")
//                Text(selection)
//            }
//            .font(.headline)
//            .foregroundColor(.white)
//            .padding()
//            .padding(.horizontal)
//            .background(Color.blue)
//            .cornerRadius(10)
//            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
//        }
        

        
        //        Menu {
        //            Picker(selection: $selection, label: EmptyView()) {
        //                ForEach(filterOptions, id: \.self) { option in
        //                    Text(option)
        //                        .tag(option)
        //                }
        //            }
        //        } label: {
        //            customLabel
        //        }
        
        
        //        VStack {
        //
        //            HStack {
        //                Text("Age: ")
        //                Text(selection)
        //            }
        //
        //            Picker(
        //                selection: $selection,
        //                content: {
        //                    ForEach(18..<100) { age in
        //                        Text("\(age)")
        //                            .tag("\(age)")
        //                            .font(.headline)
        //                            .foregroundColor(.red)
        //                    }
        //                },
        //                label: {
        //                    Text("Picker")
        //                }
        //            )
        //            .pickerStyle(WheelPickerStyle())
        ////            .background(Color.gray.opacity(0.3))
        //        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
