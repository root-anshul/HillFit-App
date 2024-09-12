//
//  SuccessView.swift
//  HIITFit
//
//  Created by anshul on 13/09/24.
//

import SwiftUI

struct SuccessView: View {
    var body: some View {
        ZStack{
        
            VStack{
                VStack(alignment:.center){
                    Image(systemName: "hand.raised.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 75,height: 75)
                        .foregroundColor(.purple)
             
                    Text("High Five!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                       
                    Text("""
                             Good job completing all four exercises!
                             Remember tomorrow's another day.
                             So eat well and get some rest.
                             """)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                  
                }
        
            }
           
            VStack{
                Spacer()
                Button("Continue"){}
                    .padding(.bottom)
            }
        }
    }
}

#Preview {
    SuccessView()
}
