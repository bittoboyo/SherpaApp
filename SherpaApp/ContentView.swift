import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
                TabView {
                    MapView()
                        .tabItem {
                            Label("Explore", systemImage: "map")
                        }
                    ChatHistoryView()
                        .tabItem {
                            Label("Chats",systemImage: "message.fill")
                        }
                    SavedView()
                        .tabItem {
                            Label("Saved", systemImage: "bookmark")
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
