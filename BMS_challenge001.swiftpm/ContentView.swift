import SwiftUI

//#10MinuteSwiftUI #001
struct TenMinute001: View {
    var body: some View {
        ZStack {
            Color.purple
            VStack {
                Group {
                    TextField("email", text: Binding.constant(""))
                    TextField("password", text: Binding.constant(""))
                }
                .multilineTextAlignment(.center)
                .frame(height: 50)
                .background(Color.purple)
                .blendMode(.colorBurn)
                .cornerRadius(4)
                .padding(.vertical, 16)
                
                Toggle("Remember Me", isOn: Binding.constant(true))
                    .foregroundColor(Color.white)
                    .padding(.leading, 130)
                    .blendMode(.luminosity)
            }
            
            .padding(40)
        }
        .edgesIgnoringSafeArea(.all)
    }
}
