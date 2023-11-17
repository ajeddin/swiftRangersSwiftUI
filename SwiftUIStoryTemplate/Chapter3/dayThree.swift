//
//  dayThree.swift
//  SwiftRangers
//
//  Created by Jackelyn Toral on 11/14/23.
//

import SwiftUI

struct dayThree: View {
    @State private var astronautCommander = "Reid Wiseman"
    @State private var infectionPlanet = ["Smar","Oamena","Verzyai"].randomElement() ?? "Smar"
    @State private var serviceModule = "Orion Service Module"
    @State private var crewModule = "Orion Crew Module"
    @State private var ssamModule = "Skyborne Service Access Module"
    @State private var landingSite = "Tharsis Plateau"
    @State private var habBase = "Deimos Ridge"
    @State private var currentDay = 3
    var astronautMissionSpecialistTwo = "Jeremy Hansen"
    
    var body: some View {
        ZStack {
            Image("dayThree")
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
                    Text("As the third day dawned on the crew, the scientists back on Earth reached out to the crew, eager to learn about the initial results from the geological samples. \n \nTheir excitement was justified as the preliminary data revealed promising signs of perchlorate deposits, a discovery that could hold the key to understanding the planet's history and ties to virus.")
                    Image("explore2")
                        .padding()
                    Text("However, this was only the beginning. The scientists encouraged the crew to continue their search, urging them to explore further and collect more samples to confirm the findings. And so, Day Three was dedicated to another round of scientific exploration, with a renewed sense of purpose.")
                    Image("arrival3")
                        .padding()
                    Text("The day started with a sense of determination, but it didn't take long for the crew to indulge in a bit of horsing around. \(astronautMissionSpecialistTwo) and \(astronautCommander) couldn't resist the opportunity to share a few lighthearted moments, their laughter echoing through the rover. Even in the vastness of space, camaraderie and humor had their place. \n \nAmidst the laughter, the crew continued their exploration, digging into the planets's surface in search of more samples. The activity was going well until an unexpected mishap occurred – the drill, their trusted tool for extracting core samples, suddenly broke. It was a setback that reminded them of the challenges they faced in this hostile environment.")
                    Image("arrival5")
                        .padding()
                    Text("As the day drew to a close, the crew gathered to watch the moons set on the horizon. They knew that Day Four would bring complete darkness to the planet, a unique phenomenon they were eager to experience. Despite the challenges and the broken drill, they remained resolute in their mission, knowing that each day brought them closer to unraveling the mysteries of this enigmatic planet.")
                    Spacer()
                    Text("Continue to day four")
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
    dayThree()
}
