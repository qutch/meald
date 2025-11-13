//
//  OnboardingViews.swift
//  meald
//
//  Created by Hutch Turner on 11/2/25.
//

import SwiftUI
import MapKit


struct ProgressBar: View {
    // Progress variables
    let totalSteps: Int
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
    @State private var buttonStates: [String: Bool] = [:]
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
                    ButtonChoice(
                        buttonText: "Korean", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Korean"] ?? false },
                            set: { buttonStates["Korean"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Chinese", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Chinese"] ?? false },
                            set: { buttonStates["Chinese"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Japanese", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Japanese"] ?? false },
                            set: { buttonStates["Japanese"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                }
                HStack {
                    Spacer()
                    ButtonChoice(
                        buttonText: "Mexican", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Mexican"] ?? false },
                            set: { buttonStates["Mexican"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Spanish", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Spanish"] ?? false },
                            set: { buttonStates["Spanish"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Nigerian", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Nigerian"] ?? false },
                            set: { buttonStates["Nigerian"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                }
                HStack {
                    Spacer()
                    ButtonChoice(
                        buttonText: "American", step: step,
                        isClicked: Binding(
                            get: { buttonStates["American"] ?? false },
                            set: { buttonStates["American"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Italian", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Italian"] ?? false },
                            set: { buttonStates["Italian"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "German", step: step,
                        isClicked: Binding(
                            get: { buttonStates["German"] ?? false },
                            set: { buttonStates["German"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                }
                HStack {
                    Spacer()
                    ButtonChoice(
                        buttonText: "Vietnamese", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Vietnamese"] ?? false },
                            set: { buttonStates["Vietnamese"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Thai", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Thai"] ?? false },
                            set: { buttonStates["Thai"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "French", step: step,
                        isClicked: Binding(
                            get: { buttonStates["French"] ?? false },
                            set: { buttonStates["French"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                }
                HStack {
                    Spacer()
                    ButtonChoice(
                        buttonText: "Indian", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Indian"] ?? false },
                            set: { buttonStates["Indian"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Ethiopian", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Ethiopian"] ?? false },
                            set: { buttonStates["Ethiopian"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Greek", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Greek"] ?? false },
                            set: { buttonStates["Greek"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
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
    @State private var buttonStates: [String: Bool] = [:]
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
                    ButtonChoice(
                        buttonText: "Fine Dining", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Fine Dining"] ?? false },
                            set: { buttonStates["Fine Dining"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Food Trucks", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Food Trucks"] ?? false },
                            set: { buttonStates["Food Trucks"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Fast Food", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Fast Food"] ?? false },
                            set: { buttonStates["Fast Food"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                }
                HStack {
                    Spacer()
                    ButtonChoice(
                        buttonText: "Bars", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Bars"] ?? false },
                            set: { buttonStates["Bars"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Walk-In", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Walk-In"] ?? false },
                            set: { buttonStates["Walk-In"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Reservation", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Reservation"] ?? false },
                            set: { buttonStates["Reservation"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                }
                HStack {
                    Spacer()
                    ButtonChoice(
                        buttonText: "Home", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Home"] ?? false },
                            set: { buttonStates["Home"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Hole in the Walls", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Hole in the Walls"] ?? false },
                            set: { buttonStates["Hole in the Walls"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Take Out", step: step,
                        isClicked: Binding(
                            get: { buttonStates["Take Out"] ?? false },
                            set: { buttonStates["Take Out"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
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
 
    @StateObject private var searchVM = LocationSearchViewModel(type:"location")
    @Binding var pageSelected: [Int:[String]]
    @Binding var location: String
    @State private var curSearchTask: Task<Void, Never>?
    @State private var buttonStates: [String: Bool] = [:]
    @FocusState private var locationFieldIsFocused: Bool

    var step = 3
    var body: some View {
        VStack {
            
            // Questions
            Text("Let's set up your profile")
                .font(.title)
                .padding(.vertical, 20)
            
            Text("Where are you located?")
                .font(.headline)
            TextField(
                "Enter Location",
                text: $location
            ).onChange(of:location) {
                searchVM.update(query: location)
            }
            .frame(width: 120, height:40)
            .padding(.horizontal, 15)
            .background(Color(red:234/255, green:234/255, blue:234/255))
            .clipShape(.rect(cornerRadius:10))
            .foregroundStyle(.black)
            .multilineTextAlignment(.center)
            .autocorrectionDisabled(true)
            .focused($locationFieldIsFocused)
            
            if locationFieldIsFocused {
                ScrollView {
                    VStack(alignment: .leading) {
                        ForEach(searchVM.res, id: \.self) { item in
                            Button(item) {
                                location = item
                            }
                            .frame(height: 40)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundStyle(.black)
                            .padding(.horizontal,20)
                        }
                    }
                }.frame(maxHeight: 200)
            }
            Spacer().frame(height:50)
            Text("How far will you go?").font(.headline)
            VStack {
                HStack {
                    Spacer()
                    ButtonChoice(
                        buttonText: "5-10 min",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["5-10 min"] ?? false },
                            set: { buttonStates["5-10 min"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "10-20 min",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["10-20 min"] ?? false },
                            set: { buttonStates["10-20 min"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                }
                HStack {
                    Spacer()
                    ButtonChoice(
                        buttonText: "20-30 min",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["20-30 min"] ?? false },
                            set: { buttonStates["20-30 min"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "30-45 min",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["30-45 min"] ?? false },
                            set: { buttonStates["30-45 min"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                }
                ButtonChoice(
                    buttonText: "45+ min",
                    step: step,
                    isClicked: Binding(
                        get: { buttonStates["45+ min"] ?? false },
                        set: { buttonStates["45+ min"] = $0
                    }),
                    pageSelected: $pageSelected
                )
                
            }
            Spacer()
            
            

            
        }.frame(maxHeight: .infinity)
    }
}

struct OnboardingView_StepFour: View {
    @Binding var pageSelected: [Int:[String]]
    @State private var buttonStates: [String: Bool] = [:]
    var step = 4
    var body: some View {
        VStack {

            Text("Let's set up your profile")
                .font(.title)
                .padding(.vertical, 20)
            
            Text("Any allergies?").font(.headline)
            VStack {
                HStack {
                    Spacer()
                    ButtonChoice(
                        buttonText: "Peanuts",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["Peanuts"] ?? false },
                            set: { buttonStates["Peanuts"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Sesame",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["Sesame"] ?? false },
                            set: { buttonStates["Sesame"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Dairy",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["Dairy"] ?? false },
                            set: { buttonStates["Dairy"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                }
                HStack {
                    Spacer()
                    ButtonChoice(
                        buttonText: "Tree Nuts",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["Tree Nuts"] ?? false },
                            set: { buttonStates["Tree Nuts"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Eggs",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["Eggs"] ?? false },
                            set: { buttonStates["Eggs"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Wheat",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["Wheat"] ?? false },
                            set: { buttonStates["Wheat"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                }
                HStack {
                    Spacer()
                    ButtonChoice(
                        buttonText: "Soy",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["Soy"] ?? false },
                            set: { buttonStates["Soy"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Shellfish",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["Shellfish"] ?? false },
                            set: { buttonStates["Shellfish"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Fish",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["Fish"] ?? false },
                            set: { buttonStates["Fish"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                }
            }
            
            Spacer().frame(height:100)
            
            Text("Any other food restrictions?").font(.headline)
            VStack{
                HStack{
                    Spacer()
                    ButtonChoice(
                        buttonText: "Gluten Free",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["Gluten Free"] ?? false },
                            set: { buttonStates["Gluten Free"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                    ButtonChoice(
                        buttonText: "Vegetarian",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["Vegetarian"] ?? false },
                            set: { buttonStates["Vegetarian"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                }
                HStack{
                    Spacer()
                    ButtonChoice(
                        buttonText: "Vegan",
                        step: step,
                        isClicked: Binding(
                            get: { buttonStates["Vegan"] ?? false },
                            set: { buttonStates["Vegan"] = $0
                        }),
                        pageSelected: $pageSelected
                    )
                    Spacer()
                }
            }
            
            Spacer()
        }
    }
}

struct OnboardingView_StepFive: View {
    
    @StateObject private var searchVM = LocationSearchViewModel(type: "poi")
    @Binding var pageSelected: [Int:[String]]
    @State private var buttonStates: [String: Bool] = [:]
    @FocusState private var locationFieldIsFocused: Bool
    @State var curTyped: String = ""
    
    var step = 5
    var body: some View {
        VStack {
            // Questions
            Text("Let's set up your profile")
                .font(.title)
                .padding(.vertical, 20)
            
            Text("Any favorite spots?")
                .font(.headline)
            TextField(
                "Enter Restaurant Name",
                text: $curTyped
            ).onChange(of:curTyped) {
                searchVM.update(query: curTyped)
            }.onSubmit() {
                print("hi")
            }
            .frame(width: 120, height:40)
            .padding(.horizontal, 15)
            .background(Color(red:234/255, green:234/255, blue:234/255))
            .clipShape(.rect(cornerRadius:10))
            .foregroundStyle(.black)
            .multilineTextAlignment(.center)
            .autocorrectionDisabled(true)
            .focused($locationFieldIsFocused)
            
            if locationFieldIsFocused {
                ScrollView {
                    VStack(alignment: .leading) {
                        ForEach(searchVM.res, id: \.self) { item in
                            Button(item) {
                                curTyped = item
                            }
                            .frame(height: 40)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundStyle(.black)
                            .padding(.horizontal,20)
                        }
                    }
                }.frame(maxHeight: 200)
            }
        }
    }
}

struct OnboardingView_StepSix: View {
    @Binding var pageSelected: [Int:[String]]
    @State private var buttonStates: [String: Bool] = [:]
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
    @Binding var isClicked: Bool
    
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
    @State private var location: String = ""
    @State private var navigationBack: Bool = false
    
    
    
    var body: some View {
        ZStack {
            Color(red:255/255, green:251/255, blue:234/255).ignoresSafeArea()
            
            // Start of main body
            VStack {
                // Top Section
                HStack {
                    Button(
                        action:{
                            if (curStep > 1) {
                                withAnimation(.easeInOut(duration: 1.0)) {
                                    curStep -= 1
                                }
                            } else {
                                navigationBack = true
                            }
                        },
                        label:{Image(systemName: "chevron.left")
                            .foregroundStyle(curStep==1 ? .white : .black)
                            .imageScale(.large)}
                    )
                    .frame(width:20, height:20)
                    .padding(.horizontal, 30)
                    
                    Spacer()
                    ProgressBar(totalSteps: 6, currentStep: curStep)
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
                    OnboardingView_StepThree(pageSelected: $pageChoices, location: $location).tag(3)
                    OnboardingView_StepFour(pageSelected: $pageChoices).tag(4)
                    OnboardingView_StepFive(pageSelected: $pageChoices).tag(5)
                    OnboardingView_StepSix(pageSelected: $pageChoices).tag(6)
                }.tabViewStyle(.page(indexDisplayMode: .never)).highPriorityGesture(DragGesture())
                
                // Continue Button
                Button(
                    action:{
                        if (curStep == 6) {
                            onboardingFinished = true
                        } else {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                curStep += 1
                            }
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
        } // End of ZStack
    }
}

#Preview {
    MainOnboardingView()
}
