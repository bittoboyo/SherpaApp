import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TabView {
                SavedView()
                    .tabItem {
                        Label("Saved", systemImage: "bookmark")
                    }
                MapView()
                    .tabItem {
                        Label("Explore", systemImage: "map")
                    }
                UserProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle.fill")
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
