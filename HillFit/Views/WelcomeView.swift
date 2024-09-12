//
//  WelcomeView.swift
//  HIITFit
//
//  Created by anshul on 06/09/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack{
            HeaderView(titleText: "Welcome")
          
        }
        Spacer()
        VStack{
            VStack(alignment:.center){
                VStack{
                    Text("Get fit")
                        .font(.largeTitle)
                    Text("with high intensity interval training")
                        .font(.headline)
                }
                Image("step-up")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 240.0, height: 240.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding()
                
                Button(action:{}){
                  Text("Get Started")
                  Image(systemName: "arrow.right.circle")
                }
                .padding()
                .background(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray,lineWidth: 2)
                )
            }
        }
        Spacer()
        VStack{
            
            Button("History"){}
                .padding(.bottom)
        }
        
    }
}

#Preview {
    WelcomeView()
}
