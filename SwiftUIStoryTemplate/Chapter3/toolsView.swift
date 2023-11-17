//
//  toolsView.swift
//  SwiftRangers
//
//  Created by Jackelyn Toral on 11/16/23.
//

import SwiftUI

//struct toolsView: View {
//let tools: [String] = [
//    "Rock Hammer",
//    "Spectrometer",
//    "Drill",
//    "Microscope",
//    "Enumeration",
//    "Data Entry"
//]
//    var body: some View {
//        NavigationView {
//            ZStack {
//                Color("panelBackground")
//                    .edgesIgnoringSafeArea(.all)
//                VStack {
//                    Text("Rock Hammer")
//                    Text("Spectrometer")
//                    Text("Drill")
//                    }
//
//                }
//            }.navigationTitle("Tools")
//
//
//        }
//    }

struct toolsView: View {
    @State private var newTool = ""
    @State private var tools: [String] = [
        "Rock Hammer",
        "Spectrometer",
        "Drill",
        "Microscope",
        "Enumeration",
    ]

    var body: some View {
        NavigationStack {
            ZStack {
                Color("panelBackground")
                    .edgesIgnoringSafeArea(.all)
                    .overlay(
                        VStack {
                            List(tools, id: \.self) { tool in
                                Text(tool)
                            }

                            TextField("Enter a new tool", text: $newTool)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .cornerRadius(8)
                                .padding()

                            Button("Add Tool") {
                                if !newTool.isEmpty {
                                    tools.append(newTool)
                                    newTool = ""
                                        
                                }
                            }
                            .padding()
                        }
                        .navigationTitle("Astronaut Crew")
                     
                    )
            }
        }
    }
}












//struct toolsView: View {
//    let tools: [String] = [
//        "Rock Hammer",
//        "Spectrometer",
//        "Drill",
//        "Microscope",
//        "Enumeration",
//        "Data Entry"
//    ]
//
//    var body: some View {
//        List(tools, id: \.self) { tool in
//            Text(tool)
//                .font(.body)
//        }
//        .navigationBarTitle("Astronaut Tools")
//    }
//}


#Preview {
    toolsView()
}
