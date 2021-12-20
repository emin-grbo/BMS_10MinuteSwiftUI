import SwiftUI

struct ContentView: View {
    
    let cities = ["London",
                  "New York",
                  "Los Angeles",
                  "Oslo",
                  "Belgrade",
                  "Milan"]
    
    var body: some View {
        VStack {
            List { ForEach(cities, id: \.self) { city in
                Text(city)
            }
            }
        }
        .background(Color.purple)
    }
}
