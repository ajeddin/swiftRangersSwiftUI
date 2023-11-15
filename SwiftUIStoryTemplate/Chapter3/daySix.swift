//
//  daySix.swift
//  SwiftRangers
//
//  Created by Jackelyn Toral on 11/14/23.
//

import SwiftUI

struct daySix: View {
    var body: some View {
        ZStack {
            Image("daySix")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                Spacer()
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
    daySix()
}
