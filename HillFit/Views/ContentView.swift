//
//  ContentView.swift
//  HIITFit
//
//  Created by anshul on 06/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Text("hello world")
            ForEach(Exercise.exercises.indices,id:\.self){index in
                ExerciseView(index: index)
            }
            
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    ContentView()
}
