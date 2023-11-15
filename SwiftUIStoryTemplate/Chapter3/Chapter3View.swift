import SwiftUI

struct Chapter3View: View {
    
    @State private var astronautCommander = "Reid Wiseman"
    @State private var astronautPilot = "Victor Glover"
    @State private var astronautMissionSpecialistOne = "Christina Koch"
    @State private var astronautMissionSpecialistTwo = "Jeremy Hansen"
    @State private var commander = "Wiseman"
    @State private var pilot = "Glover"
    @State private var missionSpecialistOne = "Koch"
    @State private var missionSpecialistTwo = "Hansen"
    
    @State private var crewLanding = [ "Crew Landing: Completed"]
    @State private var buildHabBase = [ "Build Deimos HAB: Completed", "Build Deimos HAB: Not Fulfilled"]
    @State private var scientificExploration = [ "Scientific Exploration: Completed", "Scientific Exploration: Not Fulfilled", "Scientific Exploration: Ongoing"]
    @State private var perchlorateDepositsFound = [ "Perchlorate Deposits: Completed", "Perchlorate Deposits: Not Fulfilled", "Perchlorate Deposits: Ongoing"]
    @State private var ironOxidesFound = [ "Iron Oxides: Completed", "Iron Oxides: Not Fulfilled","Iron Oxides: Ongoing"]
    @State private var habModuleCapibilities = [ "Module Capabilities: Completed", "Module Capabilities: Not Fulfilled"]
    @State private var findAntidote = [ "Find Antidote: Completed", "Antidote: Not Fulfilled"]
    @State private var bringComponentsEarth = [ "Return Components Earth: Completed", "Return Components Earth: Not Fulfilled"]
    @State private var perchlorateChemicalEquation = "2 ClO₄⁻ (perchlorate ions) → Cl₂ (chlorine gas) + 2 O₂ (oxygen gas)"
    
    @State private var infectionPlanet = ["Smar","Oamena","Verzyai"].randomElement() ?? "Smar"
    @State private var serviceModule = "Orion Service Module"
    @State private var crewModule = "Orion Crew Module"
    @State private var ssamModule = "Skyborne Service Access Module"
    @State private var landingSite = "Tharsis Plateau"
    @State private var habBase = "Deimos Ridge"
    
    @State private var currentDay = 0
    
    var body: some View {
        
        ZStack {
            //            add the day text thing here with the state var stuff
            
            switch currentDay {
            case 0:
                dayZero()
                Text("Day \(currentDay): Arrival on \(infectionPlanet)")
                    .font(.body)
                    .padding(.top, 350.0)
            case 1:
                dayOne()
                Text("Day \(currentDay): \(habBase) on \(infectionPlanet)")
                    .font(.body)
                    .padding(.top, 350.0)
            case 2:
                dayTwo()
                Text("Day \(currentDay): \(habBase) on \(infectionPlanet)")
                    .font(.body)
                    .padding(.top, 350.0)
            case 3:
                dayThree()
                Text("Day \(currentDay): \(habBase) on \(infectionPlanet)")
                    .font(.body)
                    .padding(.top, 350.0)
            case 4:
                dayFour()
                Text("Day \(currentDay): \(habBase) on \(infectionPlanet)")
                    .font(.body)
                    .padding(.top, 350.0)
            case 5:
                dayFive()
                Text("Day \(currentDay): \(habBase) on \(infectionPlanet)")
                    .font(.body)
                    .padding(.top, 350.0)
            case 6:
                daySix()
                Text("Day 6: \(serviceModule) in \n\(infectionPlanet)'s orbit")
                    .font(.body)
                    .padding(.top, 350.0)
                
            default:
                Text("End of the chapter, go to chapter four.")
                Spacer()
            }
            
//            Text("Day \(currentDay + 1): \(habBase) on \(infectionPlanet)")
//                .font(.body)
//                .padding(.top, 350.0)
            
            // Add more content for each day as needed
            HStack {
                Button(action: {
                    if currentDay > 0 {
                        currentDay -= 1
                    }
                }
                ) {
                    Text("Previous Day")
                        .padding()
                }
                //                Spacer()
                Button(action: {
                    if currentDay < 6 {
                        currentDay += 1
                    }
                }
                ){
                    Text("Next Day")
                        .padding()
                }
            } .padding(.top, 700.0)
                .foregroundColor(.black)
            
        }
    }
    
}


#Preview {
    Chapter3View()
}
