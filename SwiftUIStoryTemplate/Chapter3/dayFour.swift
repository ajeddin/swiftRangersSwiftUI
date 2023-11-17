//
//  dayFour.swift
//  SwiftRangers
//
//  Created by Jackelyn Toral on 11/14/23.
//

import SwiftUI

struct dayFour: View {
    @State  var astronautCommander = "Reid Wiseman"
    @State  var infectionPlanet = ["Smar","Oamena","Verzyai"].randomElement() ?? "Smar"
    @State  var serviceModule = "Orion Service Module"
    @State  var crewModule = "Orion Crew Module"
    @State  var ssamModule = "Skyborne Service Access Module"
    @State  var landingSite = "Tharsis Plateau"
    @State  var habBase = "Deimos Ridge"
    @State private var currentDay = 4
    var missionSpecialistOne = "Koch"
    var perchlorateChemicalEquation = "2 ClO₄⁻ (perchlorate ions) → Cl₂ (chlorine gas) + 2 O₂ (oxygen gas)"
    
    var body: some View {
       
        
        ZStack {
            Image("dayFour")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                Spacer()
                VStack() {
                    Text("Day \(currentDay): Scientific Exploration of Planet")
                        .font(.headline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .underline()
                        .italic()
                    Image("explore6")
                    Text("Because the surface of the planet is encased in darkness, the crew has dedicated their day to ensuring the module HAB can support life functions for future missions to \(infectionPlanet). They have sent the following information forward to Houston to relay to the scientists. \n \nCrew has collected the following: \n")
                    Spacer()
                    Text("View Astronaut Page")
                        .font(.headline)
                        .fontWeight(.light)
                        .italic()
                    Text("\nThe crew has surmised the following: \n \nAfter \(missionSpecialistOne) analyzed the samples for any evidence of of carbon-based life structures, the results were bleak. Despite the planet's unique geological compositions, it is abscent of any signs of carbon-based life structures. \n \nOur detailed examination revealed a composition rich in iron oxides and perchlorate deposits, but the absence of organic molecules or any signs of past or present carbon-based life. While the planet's geology and chemistry are fascinating, it appears that the planet may not host the intricate web of life we had hoped to discover. \n \nWhile carbon-based life is the only form of life we have observed, it's theoretically possible that life could exist in forms different from what we know. \n \nOur detailed examination revealed a composition rich in iron oxides and perchlorate deposits. The chemical equation for the decomposition of perchlorate to release oxygen is as follows:")
                   Text("\n \(perchlorateChemicalEquation) \n")
                        .foregroundStyle(.red)
                        .italic()
                        .fontWeight(.semibold)
                    Text("Perchlorates are known for their oxygen-rich properties, making them valuable resources for the generation of rocket fuel. \n \nHAB Module Capabilities: \n \nThe HAB on \(habBase) can sustain life for future missions to the planet, and the layout of the HAB connection points will ensure further expansion.")
                    Spacer()
                    Text("Continue to day five")
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
    dayFour()
}
