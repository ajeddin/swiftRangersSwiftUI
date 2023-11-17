//
//  astronautView.swift
//  SwiftRangers
//
//  Created by Jackelyn Toral on 11/16/23.
//

import SwiftUI

//struct astronautView: View {
//    var body: some View {
//        
//        NavigationView {
//            ZStack {
//                Color("panelBackground")
//                    .edgesIgnoringSafeArea(.all)
//                VStack {
//                    Text("Hello, World!")
//                   
//                }
//            }.navigationTitle("Astronaut Crew")
//        }
//    }
//}

struct astronautView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    Color("panelBackground")
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        ForEach(astronauts) { astronaut in
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Astronaut Name: \(astronaut.name)")
                                    .font(.headline)
                                Text("Astronaut Role: \(astronaut.role)")
                                    .font(.headline)
                                
                                ForEach(astronaut.tools) { tool in
                                    VStack(alignment: .leading, spacing: 5) {
                                        Text("Tool Name: \(tool.name)")
                                        Text("Tool Purpose: \(tool.purpose)")
                                    }
                                }
                            }
                            .padding()
                        }
                    }
                }
                .navigationTitle("Astronaut Crew")
            }
        }
    }

    private var astronauts: [Astronaut] {
        [
            Astronaut(id: 1, name: "Reid Wiseman", role: "Commander", tools: [
                Astronaut.Tool(name: "Rock Hammer", purpose: "Collecting geological samples"),
                Astronaut.Tool(name: "Spectrometer", purpose: "Chemical analysis")
            ]),
            Astronaut(id: 2, name: "Victor Glover", role: "Pilot", tools: [
                Astronaut.Tool(name: "Drill", purpose: "Core Sample Extraction"),
                Astronaut.Tool(name: "Microscope", purpose: "Microscopic Analysis")
            ]),
            Astronaut(id: 3, name: "Christina Koch", role: "Mission Specialist I", tools: [
                Astronaut.Tool(name: "Enumberation", purpose: "Sorting geolocigal samples"),
            ]),
            Astronaut(id: 4, name: "Jeremy Hansen", role: "Mission Specialist II", tools: [
                Astronaut.Tool(name: "Data Entry", purpose: "Filing geolocigal samples"),
            ])
        ]
    }
}


struct Astronaut: Identifiable {
    var id: Int
    var name: String
    var role: String
    var tools: [Tool]

    struct Tool: Identifiable {
        var id = UUID()
        var name: String
        var purpose: String
    }
}


#Preview {
    astronautView()
    
}
