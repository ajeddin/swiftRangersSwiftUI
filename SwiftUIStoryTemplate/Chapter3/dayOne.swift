//
//  dayOne.swift
//  SwiftRangers
//
//  Created by Jackelyn Toral on 11/14/23.
//

import SwiftUI

struct dayOne: View {
    @State private var astronautCommander = "Reid Wiseman"
    @State private var serviceModule = "Orion Service Module"
    @State private var crewModule = "Orion Crew Module"
    @State private var ssamModule = "Skyborne Service Access Module"
    @State private var landingSite = "Tharsis Plateau"
    @State private var habBase = "Deimos Ridge"
    @State private var pilot = "Glover"
    @State private var missionSpecialistOne = "Koch"
    @State private var missionSpecialistTwo = "Hansen"
    @State private var currentDay = 1
    
    var body: some View {
        ZStack {
            Image("dayOne")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                Spacer()
                VStack() {
                    Text("Day \(currentDay): Building the Foundations")
                        .font(.headline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .underline()
                        .italic()
                    Text("\nAs the intrepid crew touched down on the planet, they quickly realized their day had a bit more to offer. \n \nFirst things first, they needed to get cracking on setting up the HAB Base on \(habBase). While living in the \(crewModule) is cozy, it is not that cozy with others for extended periods.")
                    Image("arrival3")
                        .padding()
                    Text("The habitat modules had beamed down ahead of the crew's arrival, and it was up to the \(pilot) as the crew’s pilot to do transport on the \(ssamModule) (SSAM). \n \nThe SSAM took them from the landing zone on \(landingSite) to the carefully chosen HAB Base location, \(habBase).")
                    Image("arrival4")
                        .padding()
                    Text("And what were these marvelous modules, you ask? Well, they had a galley (the kitchen and command center), cozy living quarters, and the EVA (Extravehicular Activity) Prep Area, where astronauts would suit up for strolls in their great neighborhood.")
                    Image("arrival5")
                    Text("\(missionSpecialistOne), the mission specialist, was ready to take the rover for a spin, expertly carting the modules to the base. \n \nAnd because no one goes solo in space, \(missionSpecialistTwo) lent a hand in the module-moving operation. And sure, it might be smaller than your average subway car, but hey, it's their new home for the foreseeable future! \n \nAnd as the sun sets on this eventful day, the crew gathers 'round for some hearty MREs (Meals, Ready-to-Eat) – because even in the cosmos, there's no resisting the call of a meal.")
                    Spacer()
                    Text("Continue to day two")
                        .font(.headline)
                        .fontWeight(.light)
                        .italic()
                }
                
            }
            .frame(width: 250,height: 390)
            .offset(y: -52)
                
            }
        }
    }



#Preview {
    dayOne()
}
