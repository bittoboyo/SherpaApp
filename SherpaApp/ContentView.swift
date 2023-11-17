import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TabView {
                MapView()
                    .tabItem {
                        Label("Map", systemImage: "person")
                    }
                PeopleView()
                    .tabItem {
                        Label("People", systemImage: "book")
                    }
                SavedView()
                    .tabItem {
                        Label("Saved", systemImage: "star")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "hand.thumbsup")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
