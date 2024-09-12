//
//  HistoryView.swift
//  HIITFit
//
//  Created by anshul on 10/09/24.
//

import SwiftUI

struct HistoryView: View {
//       let today = Date()
//       let yesterday = Date().addingTimeInterval(-86400)
//
//       let exercises1 = ["Squat","Step Up","Burpee","Sun Salute"]
//       let exercises2 = ["Squat","Step Up","Burpee"]
    
    let history = HistoryStore()
    
    var body: some View {
        ZStack (alignment:.topTrailing){
            Button(action:{}){
                Image(systemName: "xmark.circle")
            }
            .font(.title)
            .padding(.trailing)
            VStack{
                Text("History")
                    .font(.title)
                    .padding()
                
                Form{
                    ForEach(history.exerciseDays){ day in
                    Section(
                        header:
                            Text(day.date, format: Date.FormatStyle().month(.abbreviated).day(.defaultDigits))
                            
                                .font(.headline)){
                                    ForEach(day.exercises,id: \.self){ item in
                                        Text(item)
                                    }
                                }
   
                        }
                }
            }
          
        }
    }
}

#Preview {
    HistoryView()
}
