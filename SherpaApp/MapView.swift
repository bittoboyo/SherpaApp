import MapKit
import SwiftUI

struct MapView: View {
    
    @StateObject var manager = LocationManager()
    @Namespace var mapScope
    @State var checkInList = false
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $manager.region, showsUserLocation: true)
                .frame(height: 765)
                .edgesIgnoringSafeArea(.all)
                .mapControls {
                    MapUserLocationButton()
                }
                    if checkInList == true{
                        VStack{
                            Spacer()
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundColor(.white)
                                .frame(width: .infinity, height: 500, alignment: .bottom)
                        }
                    }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
