import SwiftUI

struct ContentView: View {
    private func changeFlag() {
            currentFlag = flags.randomElement() ?? "🇮🇩" // Default bendera 🇮🇩
        }
    
    @State private var currentFlag = "🇮🇩" // Bendera awal
    private let flags = ["🇦🇷", "🇦🇺", "🇨🇦", "🇧🇷", "🇩🇪", "🇫🇷",
            "🇮🇩", "🇮🇹", "🇯🇵", "🇬🇾", "🇷🇺", "🇸🇦",
            "🇪🇸", "🇬🇧", "🇺🇸", "🇨🇳", "🇮🇳", "🇿🇦",
            "🇹🇭", "🇻🇳", "🇬🇸", "🇹🇴", "🇦🇹"]
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.8), Color.blue.opacity(0.6)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                
                Text("Welcome to the Flag Game!\nClick the button to change the flag")
                    .font(.headline)
                    .padding()
                Text(currentFlag)
                    .font(.system(size: 250))
                    .padding()
                
                Button(action: {
                    changeFlag()
                }) {
                    Text("Go!")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(50)
                }
            }
            .padding()
        }
    }
}
