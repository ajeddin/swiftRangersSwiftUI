//
//  dayFive.swift
//  SwiftRangers
//
//  Created by Jackelyn Toral on 11/14/23.
//

import SwiftUI

struct dayFive: View {
  @State private var currentDay = 5
    
    var body: some View {
       
        ZStack {
            Image("dayFive")
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
                    Text("\nAs the rover descended towards Deimos Ridge, the crew marveled at the unique landscape that lay before them. It was a momentous journey, using the rover to reach this distinctive location, unlike any other they had explored on the planet. The anticipation was palpable as they prepared to witness the sunrise over this remarkable geological formation.")
                    Image("sunrise")
                        .padding()
                    Text("As the sun's first rays pierced the horizon, bathing the ridge in a gentle, otherworldly light, the crew was momentarily blinded by the intense brilliance. They had taken all necessary precautions to shield their eyes, but nothing could truly prepare them for the ethereal beauty of the moment. The rover's instruments, equipped to handle the harsh conditions of space, allowed them to capture this extraordinary event in all its splendor. \n \nThe breathtaking sight was accompanied by a scientific revelation. In the planet's thin atmosphere, the crew discovered the presence of microorganisms that had adapted to survive in such an extreme environment. These microbes, unlike anything found on Earth, held the key to the antidote for the virus that had originally driven the crew to this distant world. They flourished in the planet's upper atmosphere, their unique biology offering a solution that could save humanity from the devastating virus. \n \nThe crew's diligence and unwavering commitment to exploration had not only allowed them to witness the sunrise over Deimos Ridge but had also led to a groundbreaking scientific discovery. In this newfound moment of triumph, they had unlocked a path to saving their home planet and securing a brighter future for all of mankind.")
                    Spacer()
                    Text("Continue to day six")
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
    dayFive()
}
