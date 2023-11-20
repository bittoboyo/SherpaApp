import MapKit
import SwiftUI

struct MapView: View {
    
    @StateObject var manager = LocationManager()
    @Namespace var mapScope
    @State private var selectedPlace: MKPointAnnotation?
    
    let places: [Place] = [
        Place(title: "Marker 1", coordinate: CLLocationCoordinate2D(latitude: 37.337349, longitude: -122.014681)),
        Place(title: "Marker 2", coordinate: CLLocationCoordinate2D(latitude: 37.328779, longitude: -118.2437))
    ]
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $manager.region, showsUserLocation: true, annotationItems: places)
//        }
//            { place in
//                MapPin(coordinate: place.coordinate, tint: .blue) .onTapGesture {
//                    selectedPlace =
//                }
            }
            .frame(height: 765)
            .edgesIgnoringSafeArea(.all)
            .mapControls {
                MapUserLocationButton()
            }
            if let selectedPlace = selectedPlace {
                MapOverlayView(selectedPlace: selectedPlace, mapScope: mapScope)
                    .onTapGesture {
                        self.selectedPlace = nil
                    }
            }
            ForEach(places) { place in
                Button(action: {
                    selectedPlace = place
                }) {
                    Text("")
                        .frame(width: 32, height: 32)
                        .position(manager.locationManager.convert(place.coordinate, toCoordinateFrom: nil))
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
    
    struct MapView_Previews: PreviewProvider {
        static var previews: some View {
            MapView()
        }
    }
    
    struct Place: Identifiable {
        let id = UUID()
        let title: String
        let coordinate: CLLocationCoordinate2D
    }
    
    struct MapOverlayView: View {
        var selectedPlace: MKPointAnnotation
        var mapScope: Namespace.ID
        
        var body: some View {
            // Customize the overlay view for the selected place
            Text("Selected Place: \(selectedPlace.title ?? "")")
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .matchedGeometryEffect(id: "mapOverlay", in: mapScope)
        }
    }
}
