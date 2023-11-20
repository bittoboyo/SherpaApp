import MapKit
import SwiftUI

struct MapView: View {
    
    @StateObject var manager = LocationManager()
    
    @State var checkInList = false
    private let rectangleHeight: CGFloat = 852
    private let rectangleWidth: CGFloat = 393
    @State private var offset = CGSize.zero
    
    var body: some View {
        ZStack{
            Map {
                Marker("Alpaca Cafe",
                   systemImage: "cup.and.saucer.fill",
                   coordinate: .alpacaCafe)
            }
            .mapControls {
                MapUserLocationButton()
            }
            .mapStyle(.standard(elevation: .flat,
            pointsOfInterest: .excludingAll,
            showsTraffic: false))
            
            if checkInList == true{
                //overlay screen for check-in member list
                VStack{
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundColor(.white)
                                .frame(width: rectangleWidth, height: rectangleHeight)
                                .offset(offset)
                                .gesture(dragGesture)
                        }
                .position(x: rectangleWidth/2, y: rectangleHeight)
            }
        }
    }
    
    var dragGesture: some Gesture {
            DragGesture()
                .onChanged { value in
                    offset = CGSize(width: 0, height: value.startLocation.y + value.translation.height)
                }

        }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

extension CLLocationCoordinate2D {
  static let alpacaCafe = CLLocationCoordinate2D(latitude: 37.337349, longitude: -122.014681)
}
