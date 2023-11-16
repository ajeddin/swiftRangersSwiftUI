import SwiftUI

// Use the relevant folders and swift files to code your chapter of the story. Keep ContentView as-is, unless you want a different type of navigation in your story.
struct PlanetStruct{
        let planetName : Planets
    }
enum Planets {
       case Smar
       case Oamena
       case Verzyai
   }
let infectionPlanets : [Planets] = [.Smar, .Oamena, .Verzyai]
  let infectionPlanetChoice = infectionPlanets[Int.random(in: 0...2)]
  let planet = PlanetStruct(planetName: infectionPlanetChoice )
  var infectionPlanet = planet.planetName
struct ContentView: View {
    var body: some View {
        TabView {
            Chapter1View()
                .tabItem {
                    Label("Chapter 1", systemImage: "1.circle")
                }
            Chapter2View()
                .tabItem {
                    Label("Chapter 2", systemImage: "2.circle")
                }
            Chapter3View()
                .tabItem {
                    Label("Chapter 3", systemImage: "3.circle")
                }
            Chapter4View()
                .tabItem {
                    Label("Chapter 4", systemImage: "4.circle")
                }
        
        }.tabViewStyle(.page)
            .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
