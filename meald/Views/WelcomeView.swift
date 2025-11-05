//
//  WelcomeView.swift
//  meald
//
//  Created by Hutch Turner on 11/2/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
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
                print("clicked")
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
    }
}

#Preview {
    WelcomeView()
}
