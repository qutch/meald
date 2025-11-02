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
                .padding(.vertical, 20)
            Text("Let us know how you feel. Leave the rest to us.")
                .font(.title2)
                .multilineTextAlignment(.center)
            Spacer()
        }.padding(.vertical, 50).padding(.horizontal, 30)
    }
}

#Preview {
    WelcomeView()
}
