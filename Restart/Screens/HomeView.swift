//
//  HomeView.swift
//  Restart
//
//  Created by SMIT KHOKHARIYA on 2024-02-12.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewAction: Bool = true
    
    var body: some View {
        VStack(spacing:20) {
            
            // Header
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
            }
            
        
            // Center
            
            Text("The time that leads to mastery is dependent on the intensity of our foucs.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            
            // Footer
            
            Button(action: {
                isOnboardingViewAction = true
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
    }
}

#Preview {
    HomeView()
}
