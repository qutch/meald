//
//  OnboardingViews.swift
//  meald
//
//  Created by Hutch Turner on 11/2/25.
//

import SwiftUI


struct ProgressBar: View {
    // Progress variables
    let totalSteps: Int = 6
    var currentStep: Int = 0
    
    var body: some View {
        HStack{
            ForEach(1...totalSteps, id:\.self) { index in
                if (index == currentStep) {
                    RoundedRectangle(cornerRadius:20)
                        .fill(.blue)
                        .frame(width:40, height:10)
                        .padding(.horizontal, 5)
                }
                else {
                    RoundedRectangle(cornerRadius:20)
                        .fill(.blue)
                        .frame(width:10, height:10)
                        .padding(.horizontal, 5)
                        .opacity(0.5)
                }
            }
        }
    }
}




struct OnboardingView_StepOne: View {
    
    @Binding var pageSelected: [Int:[String]]
    var step = 1
    
    var body: some View {
        VStack {
            
            // Questions
            Text("Let's set up your profile")
                .font(.title)
                .padding(.vertical, 20)
            
            Text("What kind of food do you like?")
                .font(.headline)
            
            VStack {
                HStack {
                    Spacer()
                    ButtonChoice(buttonText: "Korean", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "Chinese", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "Japanese", step: step, pageSelected: $pageSelected)
                    Spacer()
                }
                HStack {
                    Spacer()
                    ButtonChoice(buttonText: "Mexican", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "Spanish", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "Nigerian", step: step, pageSelected: $pageSelected)
                    Spacer()
                }
                HStack {
                    Spacer()
                    ButtonChoice(buttonText: "American", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "Italian", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "German", step: step, pageSelected: $pageSelected)
                    Spacer()
                }
                HStack {
                    Spacer()
                    ButtonChoice(buttonText: "Vietnamese", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "Thai", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "French", step: step, pageSelected: $pageSelected)
                    Spacer()
                }
                HStack {
                    Spacer()
                    ButtonChoice(buttonText: "Indian", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "Ethiopian", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "Greek", step: step, pageSelected: $pageSelected)
                    Spacer()
                }
            }
            
            
            // Continue Button
            Spacer()
            
        }
        .frame(maxWidth:.infinity, maxHeight:.infinity)
        .padding(.vertical, 20)
        .background(Color(red:255/255, green:251/255, blue:234/255))
    }
}

struct OnboardingView_StepTwo: View {
    
    @Binding var pageSelected: [Int:[String]]
    var step = 2
    
    var body: some View {
        VStack {
            
            // Questions
            Text("Let's set up your profile")
                .font(.title)
                .padding(.vertical, 20)
            
            Text("Where do you like to eat?")
                .font(.headline)
            
            VStack {
                HStack {
                    Spacer()
                    ButtonChoice(buttonText: "Fine Dining", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "Food Trucks", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "Fast Food", step: step, pageSelected: $pageSelected)
                    Spacer()
                }
                HStack {
                    Spacer()
                    ButtonChoice(buttonText: "Bars", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "Walk-In", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "Reservation", step: step, pageSelected: $pageSelected)
                    Spacer()
                }
                HStack {
                    Spacer()
                    ButtonChoice(buttonText: "Home", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "Hole in the Walls", step: step, pageSelected: $pageSelected)
                    Spacer()
                    ButtonChoice(buttonText: "Take Out", step: step, pageSelected: $pageSelected)
                    Spacer()
                }
            }
            
            Spacer()
            
            
            
            
        }
            .frame(maxWidth:.infinity, maxHeight:.infinity)
            .padding(.vertical, 20)
            .background(Color(red:255/255, green:251/255, blue:234/255))
    }
}


struct OnboardingView_StepThree: View {
    @Binding var pageSelected: [Int:[String]]
    var step = 3
    var body: some View {
        Text("Step Three")
    }
}

struct OnboardingView_StepFour: View {
    @Binding var pageSelected: [Int:[String]]
    var step = 4
    var body: some View {
        Text("Step four")
    }
}

struct OnboardingView_StepFive: View {
    @Binding var pageSelected: [Int:[String]]
    var step = 5
    var body: some View {
        Text("Step five")
    }
}

struct OnboardingView_StepSix: View {
    @Binding var pageSelected: [Int:[String]]
    var step = 6
    var body: some View {
        Text("Step six")
    }
}


struct ButtonChoice: View {
    
    private func addSelection(toAdd: String) {
        if !(pageSelected[step, default: []].contains(toAdd)) {
            pageSelected[step, default: []].append(toAdd)
        }
    }
    
    private func removeSelection(toRemove: String) {
        if let indexToRemove = pageSelected[step]?.firstIndex(of: toRemove) {
            pageSelected[step]?.remove(at: indexToRemove)
        }
    }
    
    var buttonText: String
    var step: Int
    @State private var isClicked: Bool = false
    @Binding var pageSelected: [Int:[String]]
    
    var body: some View {
        Button(
            action: {
                isClicked.toggle()
                if (isClicked) {
                    addSelection(toAdd: buttonText)
                } else {
                    removeSelection(toRemove: buttonText)
                }
                print(pageSelected)
            },
            label: {
                Text(buttonText)
                    .frame(height: 40)
                    .padding(.horizontal, 15)
                    .background(
                        isClicked ?
                        Color(red:255/255, green:233/255, blue:145/255) :
                        Color(red:234/255, green:234/255, blue:234/255)
                    )
                    .clipShape(.rect(cornerRadius:10))
                    .foregroundStyle(.black)
            }
        )
    }
}


struct MainOnboardingView: View {
    @State private var curStep: Int = 1
    @State private var pageChoices: [Int : [String]] = [:]
    @State private var onboardingFinished: Bool = false
    
    private func savePagePreferences() {
//        pageChoices[curStep] = pageSelected
//        pageSelected = []
        print(pageChoices)
    }
    
    var body: some View {
        ZStack {
            Color(red:255/255, green:251/255, blue:234/255).ignoresSafeArea()
            
            // Start of main body
            VStack {
                // Top Section
                HStack {
                    Button(
                        action:{if (curStep > 1){
                            curStep -= 1
                        }
                    },
                        label:{Image(systemName: "chevron.left").foregroundStyle(.black).imageScale(.large)}
                    )
                    .frame(width:20, height:20)
                    .padding(.horizontal, 30)
                    
                    Spacer()
                    ProgressBar(currentStep: curStep)
                    Spacer()

                    Spacer()
                        .frame(width:20, height:20)
                        .padding(.horizontal,30)
                }
                .frame(maxWidth:.infinity, alignment:.center)
                
                // Middle Section
                TabView(selection: $curStep) {
                    OnboardingView_StepOne(pageSelected: $pageChoices).tag(1)
                    OnboardingView_StepTwo(pageSelected: $pageChoices).tag(2)
                    OnboardingView_StepThree(pageSelected: $pageChoices).tag(3)
                    OnboardingView_StepFour(pageSelected: $pageChoices).tag(4)
                    OnboardingView_StepFive(pageSelected: $pageChoices).tag(5)
                    OnboardingView_StepSix(pageSelected: $pageChoices).tag(6)
                }.tabViewStyle(.page(indexDisplayMode: .never))
                
                // Continue Button
                Button(
                    action:{
                        savePagePreferences()
                        if (curStep == 6) {
                            onboardingFinished = true
                        } else {
                            curStep += 1
                        }
                    }
                ){
                    Text("Continue")
                        .foregroundStyle(Color.black)
                        .frame(width:200, height:50)
                        .background(Color(red:255/255, green:91/255, blue:91/255))
                        .cornerRadius(100)
                }
                
            }
            
        }
    }
    
}

#Preview {
    MainOnboardingView()
}
