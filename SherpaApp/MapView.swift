import MapKit
import SwiftUI

struct MapView: View {
    
    @StateObject var manager = LocationManager()
    @Namespace var mapScope
    
    var body: some View {
        Map(coordinateRegion: $manager.region, showsUserLocation: true)
            .frame(height: 765)
            .edgesIgnoringSafeArea(.all)
            .mapControls {
                MapUserLocationButton()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
