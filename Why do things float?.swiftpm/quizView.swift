import SwiftUI

struct quizView: View {
    @State private var selectedAnswer: Int? = nil
    @State private var isSelected: Int? = nil
    @State private var correctAnswerChosen = false
    var body: some View {
        NavigationStack {
            ZStack{
                Image("generalBackground")
                    .resizable().ignoresSafeArea()
                VStack{
                    Text("Why do you think things float?")
                        .font(.system(size:50, weight: .bold, design: .rounded))
                        .offset(y: -80)
                    Spacer().frame(height: 60)
                    VStack(spacing: 30){
                        Button(action: {
                            correctAnswerChosen = false
                            self.selectedAnswer = 1
                            if self.selectedAnswer == 1{
                                self.isSelected = self.selectedAnswer
                            }
                        }){
                            Text("Objects float because they are lightweight")
                        }
                        .padding()
                        .frame(width: 800)
                        .background(self.isSelected ==  1 ? Color.red.opacity(0.7): Color.white.opacity(0.3))
                        .cornerRadius(20)
                        
                        Button(action: {
                            correctAnswerChosen = false
                            self.selectedAnswer = 2
                            if self.selectedAnswer == 2{
                                self.isSelected = self.selectedAnswer
                            }
                        }){
                            Text("Objects float because of their shape")
                        }
                        .padding()
                        .frame(width: 800)
                        .background(self.isSelected == 2 ?Color.red.opacity(0.7):Color.white.opacity(0.3))
                        .cornerRadius(20)
                        
                        Button(action: {
                            correctAnswerChosen = true
                            self.selectedAnswer = 3
                            if self.selectedAnswer == 3{
                                self.isSelected = self.selectedAnswer
                            }
                        }){
                            Text("Objects float because of their density")
                        }
                        .padding()
                        .frame(width: 800)
                        .background(self.isSelected == 3 ?Color.green:Color.white.opacity(0.3))
                        .cornerRadius(20)
                    }
                    .font(.system(size:30, weight: .bold, design: .rounded))
                    Spacer().frame(height: 80)
                    NavigationLink(destination: duckView()) {
                        Text("Let's try floating!")
                            .padding(20)
                            .padding(.horizontal,20)
                            .font(.system(size:30, weight: .bold, design: .rounded))
                            .foregroundColor(.green)
                            .background(correctAnswerChosen ? .white : .white.opacity(0.5))
                            .cornerRadius(50)
                    }
                    .disabled(!correctAnswerChosen)
                    .padding(.top,50)
                    .frame(height: 0)
                }
                .foregroundColor(.white)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    quizView()
}
