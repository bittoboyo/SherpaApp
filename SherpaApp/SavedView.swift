import SwiftUI

struct SavedView: View {
    var body: some View {
        VStack {
            Text("All About")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("Saved")
                .font(.custom(FontNames.helvetica, size: 40).bold())
        }
        .padding()
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
    }
}
