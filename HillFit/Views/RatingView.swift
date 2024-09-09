//
//  RatingView.swift
//  HIITFit
//
//  Created by anshul on 09/09/24.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack {
            ForEach(0..<5){_ in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(.gray)
                    .font(.largeTitle)
            }
        }
        
    }
}

#Preview {
    RatingView()
}
