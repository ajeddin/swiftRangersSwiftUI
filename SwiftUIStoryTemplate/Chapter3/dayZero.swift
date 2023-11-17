//
//  dayZero.swift
//  SwiftRangers
//
//  Created by Jackelyn Toral on 11/14/23.
//

import SwiftUI

struct dayZero: View {
    @State  var astronautCommander = "Reid Wiseman"
    @State  var serviceModule = "Orion Service Module"
    @State  var crewModule = "Orion Crew Module"
    @State  var ssamModule = "Skyborne Service Access Module"
    @State  var landingSite = "Tharsis Plateau"
    @State  var habBase = "Deimos Ridge"
  @State private var currentDay = 0
    
    var body: some View {
        ZStack {
            Image("ch3")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack() {
                    Text("Day \(currentDay): Arrival to Planet")
                        .font(.headline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .underline()
                        .italic()
                    Image("arrival1")
                        .padding()
                    Text("The \(serviceModule) has made contact with Houston, confirming the successful landing of the \(crewModule) near the \(landingSite) on the planet. \n \nThe news was met with cheers throughout Johnson Space Center.")
                    Image("arrival2")
                    Text("This achievement is remarkable considering the many potential challenges the crew had to overcome during the landing. \n")
                    Text("A reporter from Channel 32 couldn't help but inquire if there was any doubt about the crew's success in this critical endeavor. \n \nNASA press secretary Maryenne Wilson stated that Mission Commander \(astronautCommander) is a seasoned pilot from the Artemis program, instilled a high degree of confidence in the mission's success. \n \nHowever, the complexities and obstacles mainly emanated from the planets terrain.")
                    Spacer()
                    Text("Continue to day one")
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
    dayZero()
}
