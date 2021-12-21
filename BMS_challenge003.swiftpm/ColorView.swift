import SwiftUI

struct ColorView: View {
    
    let color: Color
    
    var body: some View {
        ZStack {
            color
        }
        .edgesIgnoringSafeArea(.all)
    }
}
