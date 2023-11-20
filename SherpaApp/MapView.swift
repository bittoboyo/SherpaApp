import MapKit
import SwiftUI

struct MapView: View {
    
    @StateObject var manager = LocationManager()
    
    @State var checkInList = false
    private let rectangleHeight: CGFloat = 852
    private let rectangleWidth: CGFloat = 393
    @State private var pos = CGPoint(x: 100, y: 100)
    
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
            
            Button("Marker Mockup") {
                checkInList = true
            }
            .background(.white)
            

            if checkInList == true{
            //overlay screen for check-in member list
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.white)
                        .frame(width: rectangleWidth, height: rectangleHeight)
                        .offset(offset)
                        .gesture(dragGesture)
                        .position(x: rectangleWidth/2, y: rectangleHeight)
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(red:0.8,green:0.8,blue:0.8))
                        .frame(width: 45, height: 7)
                        .offset(offset)
                        .gesture(dragGesture)
                        .position(x: rectangleWidth/2, y: rectangleHeight/2 + 18)
                }

            }
        }
    }
    
    var dragGesture: some Gesture {

    DragGesture()
        .onChanged {
            value in
            @State var rectY = value.startLocation.y + value.translation.height
            if rectY < 200 && rectY > -400{
                offset = CGSize(width: 0, height: rectY)
            } 
            else if rectY >= 200{
                checkInList = false

            }
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
