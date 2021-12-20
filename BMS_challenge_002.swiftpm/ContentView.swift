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











//Repeat after me
//To quickly prototype a list of views or data, follow these three steps in a newly created SwiftUI file:
//Command + Click on the Text("Hello, World!") and select Repeat
//Command + Click on the ForEach and select Embed...
//Change "Container" to:
//List
//VStack
//LazyVStack
//LazyVGrid
//Note: All of those options will also need to be embedded in a ScrollView except for List.
//
//Challenge
//Create a screen where you show a list of places
//Give yourself 10 minutes
//Share your new creation using these tags here:
//Tags: #10MinuteSwiftUI #002
