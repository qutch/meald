//
//  WelcomeView.swift
//  meald
//
//  Created by Hutch Turner on 11/2/25.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var startOnboarding: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack() {
                Text("Make eating easy")
                    .font(.largeTitle)
                Image("BurgerLogo")
                    .padding(.vertical, 30)
                Text("Let us know how you feel. Leave the rest to us.")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                Spacer()
                Button(action:{
                    startOnboarding = true
                    print(startOnboarding)
                }){
                    Text("Find my next meal")
                        .foregroundStyle(Color.black)
                        .frame(width:200, height:50)
                        .background(Color(red:255/255, green:91/255, blue:91/255))
                        .cornerRadius(100)
                }
            }
            .padding(.vertical, 50).padding(.horizontal, 30)
            .background(Color(red:255/255, green:251/255, blue:234/255))
            .navigationDestination(isPresented: $startOnboarding) {
                MainOnboardingView().navigationBarBackButtonHidden(true)
            }
        }// End of NavigationStack
    }
}

#Preview {
    WelcomeView()
}
