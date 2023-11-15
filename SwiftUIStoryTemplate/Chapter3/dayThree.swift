//
//  dayThree.swift
//  SwiftRangers
//
//  Created by Jackelyn Toral on 11/14/23.
//

import SwiftUI

struct dayThree: View {
    var body: some View {
        ZStack {
            Image("dayThree")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                Spacer()
                
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
    dayThree()
}
