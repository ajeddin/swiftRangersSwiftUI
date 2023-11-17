//
//  dayTwo.swift
//  SwiftRangers
//
//  Created by Jackelyn Toral on 11/14/23.
//

import SwiftUI

struct dayTwo: View {
    @State private var astronautCommander = "Reid Wiseman"
    @State private var infectionPlanet = ["Smar","Oamena","Verzyai"].randomElement() ?? "Smar"
    @State private var serviceModule = "Orion Service Module"
    @State private var crewModule = "Orion Crew Module"
    @State private var ssamModule = "Skyborne Service Access Module"
    @State private var landingSite = "Tharsis Plateau"
    @State private var habBase = "Deimos Ridge"
    @State private var missionSpecialistOne = "Koch"
    @State private var missionSpecialistTwo = "Hansen"
    @State private var currentDay = 2
    
    var body: some View {
        ZStack {
            Image("dayTwo")
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
                    Image("explore1")
                        .padding()
                    Text("Today brought a flurry of scientific activity as the crew geared up for exploration on Deimos Ridge. \(missionSpecialistOne) and \(missionSpecialistTwo) donned their EVA suits, ready to embark on a journey into the unknown. \n \nTheir mission: to gather geological samples, conduct experiments, and document the unique terrain of \(habBase). Armed with a range of scientific instruments, they set out on their mission.")
                    Image("explore2")
                        .padding()
                    Text("And they drove...")
                    Image("explore3")
                        .padding()
                    Text("And continued driving...")
                    Image("explore4")
                        .padding()
                    Text("Stoping to collect samples as they explored the terrain.")
                    Image("explore5")
                        .padding()
                    Text("As the crew traversed the rugged terrain, they marveled at the stark beauty of \(habBase). The astronauts collected rock samples, analyzed soil compositions, and conducted experiments to learn more about the planet's history and potential for future exploration.")
                    Image("explore6")
                        .padding()
                    Text("Back at the hab, the rest of the crew monitored the progress and communicated with Earth-based scientists to relay their findings. \n \nThe crew's work on Day 2 was a testament to the spirit of scientific exploration and the quest for knowledge. \n \nTheir successful scientific exploration on Deimos Ridge had brought them one step closer to unlocking the mysteries of foreign planet.")
                    Spacer()
                    Text("Continue to day three")
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
    dayTwo()
}
