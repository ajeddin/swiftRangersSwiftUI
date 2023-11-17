//
//  daySix.swift
//  SwiftRangers
//
//  Created by Jackelyn Toral on 11/14/23.
//

import SwiftUI

struct daySix: View {
    @State private var currentDay = 6
    
    var body: some View {
        ZStack {
            Image("daySix")
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
                    Image("arrival1")
                   Text("Let's celebrate this monumental occasion. Not only did we achieve all of our objectives, but we also have moments to enjoy the journey to a new planet.")
                }
            }
            .frame(width: 250,height: 390)
            .offset(y: -52)
        }
    }
}

#Preview {
    daySix()
}
