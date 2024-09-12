//
//  HistoryStoreDevData.swift
//  HIITFit
//
//  Created by anshul on 11/09/24.
//

import Foundation
extension HistoryStore{
   
    mutating func createDevData(){
        exerciseDays = [
            ExerciseDay(date: Date().addingTimeInterval(-86400), exercises: [
                Exercise.exercises[0].exerciseName,
                Exercise.exercises[1].exerciseName,
                Exercise.exercises[2].exerciseName
            ]),
            ExerciseDay(date: Date().addingTimeInterval(-86400*2), exercises: [
                Exercise.exercises[0].exerciseName,
                Exercise.exercises[1].exerciseName
            ])
        ]
    }
}
