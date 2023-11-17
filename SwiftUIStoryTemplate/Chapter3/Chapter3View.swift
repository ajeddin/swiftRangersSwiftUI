import SwiftUI

struct Chapter3View: View {
    @State var astronautCommander = "Reid Wiseman"
    @State var infectionPlanet = ["Smar","Oamena","Verzyai"].randomElement() ?? "Smar"
    @State var serviceModule = "Orion Service Module"
    @State var crewModule = "Orion Crew Module"
    @State var ssamModule = "Skyborne Service Access Module"
    @State var landingSite = "Tharsis Plateau"
    @State var habBase = "Deimos Ridge"
    @State private var currentDay = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                switch currentDay {
                case 0:
                    dayZero()
                case 1:
                    dayOne()
                case 2:
                    dayTwo()
                    
                case 3:
                    dayThree()
                case 4:
                    dayFour()
                case 5:
                    dayFive()
                case 6:
                    daySix()
                default:
                    Text("End of the chapter, go to chapter four.")
                    
                }
               
                VStack {
                    NavigationLink(destination: toolsView()) {
                        Label("Tools", systemImage: "wrench.and.screwdriver.fill")
                    }
                    NavigationLink(destination: astronautView()) {
                        Label("Astronaut Crew", systemImage: "person.3.fill")
                    }
                    
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
                        Button(action: {
                            if currentDay < 6 {
                                currentDay += 1
                            }
                        }
                        ){
                            Text("Next Day")
                                .padding()
                        }
                    }.padding()
                }
                
                .offset(y: 275.0)
                .foregroundColor(.black)
                
            }
        }
    }
}







#Preview {
    Chapter3View()
}
