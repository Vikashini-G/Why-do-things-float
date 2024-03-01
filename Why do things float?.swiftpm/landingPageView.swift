import SwiftUI

struct landingPageView: View {
    @State private var letNavigate: Bool = false
    var body: some View {
        NavigationStack{
            ZStack{
                Image("duckFloat").resizable().ignoresSafeArea()
                VStack{
                    Spacer()
                    HStack{
                        Text("Why\ndo things float?")
                            .font(.system(size:80, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .offset(y: -50)
                        Spacer()
                        NavigationLink(destination: quizView()) {
                            Text("Let's see!")
                                .padding(20)
                                .padding(.horizontal,20)
                                .font(.system(size:30, weight: .bold, design: .rounded))
                                .foregroundColor(.green)
                                .background(.white)
                                .cornerRadius(50)
                        }
                    }
                    .padding(.horizontal, 50)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    landingPageView()
}
