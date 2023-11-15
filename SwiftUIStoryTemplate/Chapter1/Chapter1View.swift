import SwiftUI

struct Chapter1View: View {
    var body: some View {
        ZStack{
            Image("imgGameBoy").resizable().ignoresSafeArea()
            test().offset(y:-70)
.frame(width: 265,height: 375)
            
                
            
        }
    }
}

#Preview {
    Chapter1View()
}
