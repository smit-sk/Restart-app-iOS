//
//  HomeView.swift
//  Restart
//
//  Created by SMIT KHOKHARIYA on 2024-02-12.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewAction: Bool = true
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack(spacing:20) {
            
            // Header
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                Image("character-2")
                     .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(Animation.easeOut(duration: 4).repeatForever(),
                               value : isAnimating)
            }
            
            // Center
            Text("The time that leads to mastery is dependent on the intensity of  our foucs.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            
            // Footer
            Button(action: {
                withAnimation{
                   
                    playSound(sound: "success", type: "m4a")
                  
                    isOnboardingViewAction = true
                }
            }){
                
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimating = true
            })
        })
    }
}

#Preview {
    HomeView()
}
