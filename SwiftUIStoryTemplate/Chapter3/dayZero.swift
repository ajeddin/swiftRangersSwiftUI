//
//  dayZero.swift
//  SwiftRangers
//
//  Created by Jackelyn Toral on 11/14/23.
//

import SwiftUI

struct dayZero: View {
    var body: some View {
        ZStack {
            Image("ch3")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                
                Spacer()
//                Text("Day 0: Arrival to...")
                VStack() {
                    
                    Circle()
                        .fill(Color.blue)
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
    dayZero()
}
