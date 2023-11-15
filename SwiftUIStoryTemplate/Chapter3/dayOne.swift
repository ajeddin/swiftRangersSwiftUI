//
//  dayOne.swift
//  SwiftRangers
//
//  Created by Jackelyn Toral on 11/14/23.
//

import SwiftUI

struct dayOne: View {
    var body: some View {
        ZStack {
            Image("dayOne")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                Spacer()
//                Text("Day 0: Arrival to...")
                VStack() {
                    Circle()
                        .fill(Color.blue)
                    //                        .frame(width: 300, height: 300)
                    Circle()
                        .fill(Color.red)
                }
                .padding()
            }
            .frame(width: 277,height: 390)
            .offset(y: -64)
                
            }
        }
    }



#Preview {
    dayOne()
}
