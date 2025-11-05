//
//  User.swift
//  meald
//
//  Created by Hutch Turner on 11/4/25.
//

import Foundation

struct UserProfile {
    // Public Personal Info
    var username: String
    var city: String
    var bio: String
    var profilePicture: String?
    
    // Private Personal Info
    var phoneNumber: String
    
    // Food Preferences
    var likedFoods: [String]
    var likedRestaurants: [String]
    var dislikedFoods: [String]
    
    var likedCuisines: [String]
    var preferredDistance: Float
    var prefferedDiningStyle: [String]
    
    
    // Food Restrictions
    var glutenFree: Bool
    var vegetarian: Bool
    var vegan: Bool
    var allergies: [String]
    
}
