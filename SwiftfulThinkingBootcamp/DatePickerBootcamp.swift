//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/26.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        
        VStack {
            
            Text("Selected date is ")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            DatePicker("Select", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
        }
        
//        DatePicker("Select a date", selection: $selectedDate, displayedComponents: [.hourAndMinute])
        
//        DatePicker("Select a date", selection: $selectedDate)
//            .tint(.red)
////            .datePickerStyle(GraphicalDatePickerStyle())
//            .datePickerStyle(WheelDatePickerStyle())
//            .padding()
            
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
