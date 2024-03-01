import SwiftUI

struct duckView: View {
    @State private var mass: Double = 65
    @State private var volume: Double = 40
    
    var body: some View {
        NavigationStack{
            VStack {
                Text("Density of duck: \(mass/volume, specifier: "%.2f")")
                    .font(.system(size: 50, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.top,30)
                Text("Help the duck float!")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                Spacer()
                VStack(alignment: .trailing){
                    HStack{
                        Spacer()
                        NavigationLink(destination: explainationView()){
                            Image(systemName: "questionmark.circle.fill")
                                .offset(y: -10)
                        }
                    }
                    HStack{
                        Text("Duck's mass \(mass, specifier: "%.2f") g")
                        Spacer()
                        Slider(value: $mass, in: 0...100, step: 1.0)
                            .frame(width:350)
                    }
                    HStack{
                        Text("Duck's volume \(volume, specifier: "%.2f") cm³")
                        Spacer()
                        Slider(value: $volume, in: 0...100, step: 1.0)
                            .frame(width:350)
                    }
                }
                .font(.system(size:30, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .padding(30)
                .cornerRadius(30)
            }
            .padding(50)
            .background(
                Image(imageForMass())
                    .resizable()
                    .ignoresSafeArea()
            )
        }
    }
    
    func imageForMass() -> String {
        let density: Double = mass/volume
        if density > 1 {
            return "duckSinking"
        } else {
            return "duckFloating"
        }
    }
}

#Preview{
    duckView()
}
