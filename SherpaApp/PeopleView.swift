import SwiftUI

struct PeopleView: View {
    var body: some View {
        VStack {
            Text("All About")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("People")
                .font(.custom(FontNames.helvetica, size: 40).bold())
        }
        .padding()
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
