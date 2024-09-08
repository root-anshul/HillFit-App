//
//  ExerciseView.swift
//  HillFit
//
//  Created by anshul on 06/09/24.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    let index:Int
    
    var exercise:Exercise{
        Exercise.exercises[index]
    }
    
    var body: some View {
        VStack {
            HeaderView(exerciseNames: exercise.exerciseName)
                .padding(.bottom)
            
            if let url = Bundle.main.url(forResource: exercise.videoName, withExtension: "mp4") {
                
                GeometryReader { geometry in
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: geometry.size.height*0.45)
                }
                
            } else {
                Text("Couldn't find \(exercise.exerciseName).mp4")
                    .foregroundColor(.red)
            }
            
            Text("timer")
            Text("Start/Done Button")
            Text("History Button")
        }
       
        
    }
}

#Preview {
    ExerciseView(index: 0)
}

