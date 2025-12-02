//
//  SupabaseManager.swift
//  meald
//
//  Created by Hutch Turner on 11/25/25.
//

import Foundation
import Supabase


let supabase = SupabaseClient.init(
    supabaseURL: URL(string: "https://fnwtislojufvujnyqihh.supabase.co")!,
    supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZud3Rpc2xvanVmdnVqbnlxaWhoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjI1MDk4NzMsImV4cCI6MjA3ODA4NTg3M30.uQAvRsSvXm1rAe43YyZ9lgwRrGpXKykBTmYTKVZEQSI"
)

@Observable class SupabaseManager {
    
    
    
    func sendOneTimePassword(userEmail: String) async {
        /*
         Attempts to send a OTP to the user's given email
         */
        do {
            try await supabase.auth.signInWithOTP(
                email: userEmail
            )
            print("check inbox") // change screen to notify user
        } catch {
            print("Error sending magiclink to user (\(userEmail)). \(error)") // change screen to notify user
        }
    }
    
    func startNewSession(userEmail: String, code: String) async -> AuthResponse? {
        /*
         Attempts to start a new session with given email and OTP code
         
         Returns the AuthResponse if successful, otherwise returns nil
         */
        do {
            // Try verifying the OTP
            let session = try await supabase.auth.verifyOTP(
                email: userEmail,
                token: code,
                type: .email
            )
            print("success creating new session")
            return session
        } catch {
            print("Error creating new session for user (\(userEmail)). \(error)") // change screen to notify user
        }
        return nil
    }
    
    
    
    
}
