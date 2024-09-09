//
//  VideoPlayerView.swift
//  HIITFit
//
//  Created by anshul on 09/09/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
   
    var videoName:String
    var body: some View {
        VStack{
            if let url = Bundle.main.url(forResource: videoName, withExtension: "mp4") {
                VideoPlayer(player: AVPlayer(url: url))
                    
                
            } else {
                Text("Couldn't find \(videoName).mp4")
                    .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    VideoPlayerView(videoName: "squat")
}
