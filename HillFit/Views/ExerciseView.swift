//
//  ExerciseView.swift
//  HIITFit
//
//  Created by anshul on 06/09/24.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    let index:Int
    let interval:TimeInterval = 30
    var exercise:Exercise{
        Exercise.exercises[index]
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(exerciseNames: exercise.exerciseName)
                    .padding(.bottom)
                
                if Bundle.main.url(forResource: exercise.videoName, withExtension: "mp4") != nil {
                    VideoPlayerView(videoName: exercise.videoName)
                        .frame(height: geometry.size.height*0.45)
                    
                } else {
                    Text("Couldn't find \(exercise.exerciseName).mp4")
                        .foregroundColor(.red)
                }
                
                Text(Date().addingTimeInterval(interval),style: .timer)
                    .font(.system(size: geometry.size.height*0.07))
                
                Button("Start/Done"){}
                    .font(.title3)
                    .padding()
                RatingView()
                    .padding()
               
                Spacer()
                Button("History"){}
                    .padding(.bottom)
                
                
            }
        }
    }
}

#Preview {
    ExerciseView(index: 0)
}

