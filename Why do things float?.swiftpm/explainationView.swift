import SwiftUI

struct explainationView: View {
    var body: some View {
        ZStack{
            Image("generalBackground").resizable().ignoresSafeArea()
            VStack{
                Text("The game visually demonstrates the concept of buoyancy.")
                    .font(.system(size:40, weight: .bold, design: .rounded))
                Spacer().frame(height: 50)
                Text("If the duck's denstiy is equal to or lower than water then it floats!")
                    .font(.system(size:30, weight: .bold, design: .rounded))
                    .frame(width: 600)
                Text("\nThe density of water is around 1g/cm³")
                    .font(.system(size:25, weight: .bold, design: .rounded))
            }
            .multilineTextAlignment(.center)
            .padding(30)
            .offset(y:30)
            .foregroundColor(.white)
        }
    }
}

#Preview {
    explainationView()
}
