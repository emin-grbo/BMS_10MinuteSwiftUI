import SwiftUI

struct ContentView: View {
    
    let collumns = [
        GridItem(.flexible(minimum: 20)),
        GridItem(.flexible(minimum: 20))
    ]
    
    let colors: [Color] = [.purple, .pink, .orange, .blue]
    
    var body: some View {
        NavigationView {
                LazyHGrid(rows: collumns) {
                    ForEach(0 ..< 4, id:\.self) { index in
                        
                        let color = colors[index]
                        
                        ZStack {
                            NavigationLink(destination: ColorView(color: color)) {
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(color)
                                    .frame(minWidth: 200)
                            }
                        }
                    }
                }
                .navigationTitle("Coloring Places")
                .navigationBarTitleDisplayMode(.inline)
//                .navigationBarHidden(true)
        }
    }
}







//Going places
//Navigation is a two-step process:
//Embed your view in a NavigationView
//Create a NavigationLink within the NavigationView to go to another view


//Example:
//
//NavigationView {
//    NavigationLink(destination: DetailView()) {
//        Text("See Details")
//    }
//}
//


//Optional:
//Add a navigation title: .navigationTitle("Going Places")
//Hide the navigation bar: .navigationBarHidden(true)
//Make the navigation bar smaller: .navigationBarTitleDisplayMode(.inline)


//Challenge
//In 10 minutes, create a home screen in your Xcode project where you can easily navigate to every screen you already have and will create in this challenge
//Maybe you'll use a List? A LazyVStack? A grid? It's up to you!
//Don't forget to share your creation using these tags below:
//Tags: #10MinuteSwiftUI #003
