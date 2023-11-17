 import SwiftUI

struct Chapter2View: View {
    var body: some View {
        
        ZStack {

            Image("ch2")
                .resizable()
                .edgesIgnoringSafeArea(.all)

            ScrollView {
                
                Image("lara")
                
                    .offset(x: -30)
                
                Image("lara")
                
                    .offset(x: -30)
                
                Spacer()
                
//                Text("Day 0: Arrival to...")
                VStack() {


                }
                .padding()
            }
            
            .frame(width: 277,height: 390)
            .offset(y: -64)
            
 
                ZStack {
                    Text("Dr Sarah Larson knew she had to work fast")
                        .scaledToFit()
                        .cornerRadius(15)
                        .offset(y: 170.0)
                    Text("to find the cure to save humanity")
                        .scaledToFit()
                        .cornerRadius(15)
                        .offset(y: 200.0)
                    Text("So Dr Sarah Larson assembled 4 brave scientists")
                        .scaledToFit()
                        .cornerRadius(15)
                        .offset(y: 230.0)
                    Text("to travel to planet SMAR and find the virus’s cure")
                        .scaledToFit()
                        .cornerRadius(15)
                        .offset(y: 260.0)
                }
            }
        }
        
    }
    


#Preview {
    Chapter2View()
}
