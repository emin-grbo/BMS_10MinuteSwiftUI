import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.baseBlue)
            VStack {
                HStack {
                    Image(systemName: "trash.fill")
                    Spacer()
                    Image(systemName: "list.bullet.rectangle.portrait.fill")
                }
                .foregroundColor(Color.logoBlue)
                .padding()
                
                Spacer()
                
                Group {
                Text("$250")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                Text("solid amount of cash")
                        .font(.callout)
                
                    Spacer()
                    
                Text("1234 - 5678 - 8172 - 1231")
                        .padding(.bottom, 40)
                        
                }
                .foregroundColor(Color.textBlue)
                
            }
        }
        .padding(40)
        .frame(height: 400)
    }
}

extension Color {
    static let baseBlue = Color("baseBlue")
    static let textBlue = Color("textBlue")
    static let logoBlue = Color("logoBlue")
}

//Challenge
//Create a receipt screen in 10 minutes
//Use a variety of blue colors (light blues, dark blues, etc.)
//Share your creation using these tags:
//Tags: #10MinuteSwiftUI #004
