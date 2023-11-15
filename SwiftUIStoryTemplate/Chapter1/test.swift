//
//  test.swift
//  SwiftRangers
//
//  Created by Abdulaziz Jamaleddin on 11/14/23.
//

import SwiftUI

struct test: View {
    @State var answer: String = ""
//    var answertoQ = "180"
    var ranNum1 = Int.random(in: 0...100)
    var ranNum2 = Int.random(in: 0...100)
    @State var alert = false
    var body: some View {
        
        ScrollView{
            VStack{
                Text("Please solve this calculation: \(ranNum1) + \(ranNum2)")
                TextField("Authenticate",text: $answer){
                    //                Text("Hello")
                }.onSubmit {
                    if answer == String(ranNum1+ranNum2){
                        print("Hello")
                    }else{
                        alert.toggle()
                        answer = ""
                    }
                }
                Text(answer)
            }.alert(isPresented: $alert){
                Alert(
                    title: Text("Current Location Not Available"),
                    message: Text("Your current location can’t be " +
                                  "determined at this time.")
                )
                
            }    }}
}

#Preview {
    test()
}
