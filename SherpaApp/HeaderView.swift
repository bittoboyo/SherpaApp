import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 150)
                .shadow(radius: 3)
            
            HStack {
                Text("Sherpa")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                Spacer()
            }
            .padding(.horizontal,18)
            .padding(.top, 75)
        }
        .position(x:195)
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
