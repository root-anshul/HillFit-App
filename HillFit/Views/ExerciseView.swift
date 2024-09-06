//
//  ExerciseView.swift
//  HillFit
//
//  Created by anshul on 06/09/24.
//

import SwiftUI

struct ExerciseView: View {
    let videoNames = ["squat","step-up","burpee","sun-salute"]
    let exerciseNames=["squat","Step Up","Burpee","Sun Salute"]
    let index:Int
    var body: some View {
        Text(exerciseNames[index])
    }
}

#Preview {
    ExerciseView(index: 0)
}
