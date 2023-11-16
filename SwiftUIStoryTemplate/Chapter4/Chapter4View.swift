import SwiftUI

struct Chapter4View: View {
    @State private var showText1 = false
    @State private var showText2 = false
    @State private var showText3 = false
    @State private var showText4 = false

    var body: some View {
        ZStack {
            Image("ch4")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                Spacer()

                if showText1 {
                    VStack {
                        Image("ch4img1")
                            .resizable()
                        Text("After fixing the oxidizer and returning to earth, the SpaceRangers administered the cure and saved the planet from disease, however, there is an eerie feeling in the air.. Something is not right.")
                            .edgesIgnoringSafeArea(.all)
                    }
                    .padding()
                }

                if showText2 {
                    VStack {
                        Image("ch4img2")
                            .resizable()
                        Text("ALIENS!!! the Howardans have come to earth seeking retribution for the SpaceRangers' stealing a valuable fuel source of theirs")
                            .edgesIgnoringSafeArea(.all)
                    }
                    .padding()
                }

                if showText3 {
                    VStack {
                        Image("ch4img3")
                            .resizable()
                        Text("With little time to prepare, astrobiologist Sarah Larson & the SpaceRangers prepare for a mission with the central goal of overtaking the technologically advanced Howardans... How will the astronauts get out of this situation?")
                            .edgesIgnoringSafeArea(.all)
                    }
                    .padding()
                }

                if showText4 {
                    Image("ch4img4")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .padding()
                }
                
                Button("Show Next") {
                    if !showText1 {
                        showText1.toggle()
                    } else if !showText2 {
                        showText2.toggle()
                    } else if !showText3 {
                        showText3.toggle()
                    } else if !showText4 {
                        showText4.toggle()
                    }
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
            }
            .frame(width: 277, height: 390)
            .offset(y: -64)
        }
    }
}

struct Chapter4View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter4View()
    }
}
