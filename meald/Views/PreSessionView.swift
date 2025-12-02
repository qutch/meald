//
//  PreSessionView.swift
//  meald
//
//  Created by Hutch Turner on 11/29/25.
//

import SwiftUI
import Supabase


enum PreViewState {
    case welcome
    case onboarding
    case login
    case loading
    case failure
    case success
}

struct loadingView: View {
    
    @Binding var currentView: PreViewState
    
    var body: some View {
        Text("Loading...")
    }
}

struct PreSessionView: View {
    @State private var currentState = PreViewState.welcome
    
    var body: some View {
        switch currentState {
            case .welcome:
                WelcomeView(currentView: $currentState)
        
            case .onboarding:
                MainOnboardingView(currentView: $currentState)
                
            case .login:
//              LoginView(currentView: $currentState)
                loadingView(currentView: $currentState)
                
            case .loading:
                loadingView(currentView: $currentState)
                
            case .failure:
                loadingView(currentView: $currentState)
                
            case .success:
                ExploreView(currentView: $currentState)
        }
    }
}

#Preview {
    PreSessionView()
}
