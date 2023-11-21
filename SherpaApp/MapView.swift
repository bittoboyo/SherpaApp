import MapKit
import SwiftUI

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        .asymmetric(
                    insertion: .move(edge: .trailing).combined(with: .opacity),
                    removal: .scale.combined(with: .opacity)
                )
    }
}

struct MapView: View {
    
    @StateObject var manager = LocationManager()

    @State var checkInList = false
    private let rectangleHeight: CGFloat = 852
    private let rectangleWidth: CGFloat = 393
    @State private var pos = CGPoint(x: 100, y: 100)
    
    @State private var offset = CGSize.zero
    
    
    var body: some View {
        ZStack{
            Map() {
                Annotation("Alpaca Cafe", coordinate: .alpacaCafe) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.blue)
                        Button("☕️") {
                            checkInList = true
                        }
                        .padding(5)
                        Circle()
                            .offset(x: 20, y: -20)
                            .fill(.blue)
                        Text("10")
                            .offset(x: 20, y: -20)
                            .fontWeight(.bold)
                    }
                }
            }
            .mapControls {
                MapUserLocationButton()
            }
            .mapStyle(.standard(
                emphasis: .automatic,
                pointsOfInterest: .excludingAll,
                showsTraffic: false))
            .onAppear {
                CLLocationManager().requestWhenInUseAuthorization()
            }
            


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
  static let alpacaCafe = CLLocationCoordinate2D(latitude: -33.88439209095589, longitude: 151.2010453846179)
}
