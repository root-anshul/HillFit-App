//
//  ContentView.swift
//  HillFit
//
//  Created by anshul on 06/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Text("hello world")
            ForEach(0..<4){number in
                ExerciseView(index: number)
            }
            
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    ContentView()
}
