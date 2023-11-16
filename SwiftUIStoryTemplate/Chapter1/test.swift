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
    var ranNum1 = Int.random(in: 1...100)
    var ranNum2 = Int.random(in: 1...100)
    @State var isAuthenticated = false
    @State var alert = false
    @State private var displayedText: String = ""
    @State private var isAnimating = false
    func printSlow(phrase: String, speed: TimeInterval = 0.07   ) {
         for (index, character) in phrase.enumerated() {
             DispatchQueue.main.asyncAfter(deadline: .now() + speed * Double(index)) {
                 displayedText.append(character)
                 if (index%150 == 0 && index>150){
                     displayedText = ""
                 }
             }
         }
     }

    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()

        if !isAuthenticated{
            
                HStack {
                    VStack {
                                        
                        Text("There will be multiple steps to authenticate identity")
                            .font(.custom("Courier New", size: 17))
                            .font(.headline)
//                            .multilineTextAlignment(.center)
                            .padding()
                            .foregroundColor(.green)
                            .bold()
                        
                        Text("Please solve this calculation:\n \(ranNum1) + \(ranNum2)") .font(.custom("Courier New", size: 16))
                            .font(.body)
                            .foregroundColor(.green)
                            .bold()
                        
                            .padding()
                        
                        HStack {
                         
                            HStack{
                                Image(systemName: "key.horizontal").foregroundColor(.green)
                                    .padding(.leading, 40.0)
                                    .opacity(isAnimating ? 0 : 1)
                                    .onAppear() {
                                        
                                                   let timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
                                                       withAnimation(Animation.easeInOut(duration: 0.5)) {
                                                           self.isAnimating.toggle()
                                                       }
                                                   }
                                                   timer.fire()
                                               }

                                TextField("Answer", text: $answer) .font(.custom("Courier New", size: 14))
                                    .foregroundColor(.green)

                                    .bold()
                                    .keyboardType(.numberPad)
                                    .disableAutocorrection(true)

                                    .font(.custom("Courier New", size: 14))
                                    .padding()
                                    .onSubmit {
                                        if answer == String(ranNum1 + ranNum2) {
                                            isAuthenticated.toggle()

                                        } else {
                                            alert.toggle()
                                            answer = ""
                                        }
                                    }}
                         }
                    }
                    .alert(isPresented: $alert) {
                        Alert(
                            title: Text("Unauthorized") .font(.custom("Courier New", size: 14)),
                            message: Text("Please Try Again") .font(.custom("Courier New", size: 14))
                        )
                    }
                }
            }
            if isAuthenticated{
                VStack{
                    
                    Text(displayedText)
                        .bold()
                    
                        .font(.custom("Courier New", size: 17))
                        .font(.headline)
                            .multilineTextAlignment(.center)
                        .padding()
                        .foregroundColor(.green)
Spacer()
//                    HStack{
//                        NavigationLink(destination: Chapter2View()){
//                                                Image(systemName: "arrow.right.circle")
//                                                    .foregroundColor(.green)
//                                                    .padding(15)
//                                            }               
//                    }
                    
                    
                }.onAppear{
           
                    
    printSlow(phrase: """
As the climate crisis intensified, the Earth's ice caps were melting at an alarming rate. It wasn't just the rising sea levels and extreme weather events that worried scientists now. It was the revelation that one of the ancient ice caps contained a virus, a virus unlike anything ever seen before. Its origin? An extraterrestrial planet called \(infectionPlanet). Dr. Sarah Larson, a brilliant astrobiologist, had been studying the virus for months. It had already infected a significant portion of the population, causing strange symptoms and leaving those afflicted in a state of paralysis, unable to communicate. Some called it the \(infectionPlanet) Virus, and its origins were shrouded in mystery. Sarah worked tirelessly, analyzing the virus's genetic code, and she discovered something shocking. The virus was not naturally occurring on Earth. Its complex structure and genetic makeup suggested an extraterrestrial origin. She couldn't believe it; she had discovered evidence of alien life. After sharing her findings with a select group of scientists, they set their sights on a new mission: to trace the virus back to its source and find a cure. It became clear that the antidote for the virus might also be extraterrestrial in origin. The fate of humanity rested on their shoulders.
""")
//                    printSlow(phrase: """
//As the climate crisis intensified, the Earth's ice caps were melting at an alarming rate. It wasn't just the rising sea levels and extreme weather events that worried scientists now. It was the revelation that one of the ancient ice caps contained a virus, a virus unlike anything ever seen before. Its origin? An extraterrestrial planet called \(infectionPlanet).
//
//""")
//                    displayedText = ""
//    printSlow(phrase: """
//                     Dr. Sarah Larson, a brilliant astrobiologist, had been studying the virus for months. It had already infected a significant portion of the population, causing strange symptoms and leaving those afflicted in a state of paralysis, unable to communicate. Some called it the \(infectionPlanet) Virus, and its origins were shrouded in mystery.
//""")
//                    displayedText = ""
//
//    printSlow(phrase: """
//                Sarah worked tirelessly, analyzing the virus's genetic code, and she discovered something shocking. The virus was not naturally occurring on Earth. Its complex structure and genetic makeup suggested an extraterrestrial origin. She couldn't believe it; she had discovered evidence of alien life.
//                """)
//                    displayedText = ""
//
//    printSlow(phrase: """
//        After sharing her findings with a select group of scientists, they set their sights on a new mission: to trace the virus back to its source and find a cure. It became clear that the antidote for the virus might also be extraterrestrial in origin. The fate of humanity rested on their shoulders.
//""")
              }
                


                
                
                
                
                
            }
            
            
           
            
        }
    }
}

#Preview {
    test()
}
