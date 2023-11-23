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
    @State var checkInPlaceNo = 0
    private let rectangleHeight: CGFloat = 852
    private let rectangleWidth: CGFloat = 393
    @State private var pos = CGPoint(x: 100, y: 100)
    @State private var offset = CGSize.zero
    
    @State private var vibrateOnRing = true
    
    var body: some View {
        ZStack{
            Map() {
                Annotation("Alpaca Cafe", coordinate: .alpacaCafe) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.blue)
                            .frame(width:35,height:35)
                        Button{
                            checkInList = true
                            checkInPlaceNo = 0
                        } label: {
                            Image(systemName: "cup.and.saucer.fill")
                                .foregroundStyle(.white)
                        }

                        Circle()
                            .offset(x: 20, y: -20)
                            .fill(.blue)
                        Text("4")
                            .offset(x: 20, y: -20)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .padding(5)
                    }
                }
                
                Annotation("Epic Coffee", coordinate: .epicCoffee) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.blue)
                            .frame(width:35,height:35)
                        Button {
                            checkInList = true
                            checkInPlaceNo = 3
                        } label: {
                            Image(systemName: "cup.and.saucer.fill")
                                .foregroundStyle(.white)
                        }
                        
                        Circle()
                            .offset(x: 20, y: -20)
                            .fill(.blue)
                        Text("6")
                            .offset(x: 20, y: -20)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .padding(5)
                    }
                }
                
                Annotation("Sydney Local Library", coordinate: .sydneyLibrary) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.blue)
                            .frame(width:35,height:35)
                        Button {
                            checkInList = true
                            checkInPlaceNo = 0
                        } label: {
                            Image(systemName: "book.fill")
                                .foregroundStyle(.white)
                        }
                        
                        Circle()
                            .offset(x: 20, y: -20)
                            .fill(.blue)
                        Text("17")
                            .offset(x: 20, y: -20)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .padding(5)
                    }
                }
                
                Annotation("Abercrombie Hotel", coordinate: .abercrombieHotel) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.blue)
                            .frame(width:35,height:35)
                        Button {
                            checkInList = true
                            checkInPlaceNo = 0
                        }label: {
                            Image(systemName: "building.2.fill")
                                .foregroundStyle(.white)
                        }

                        Circle()
                            .offset(x: 20, y: -20)
                            .fill(.blue)
                        Text("22")
                            .offset(x: 20, y: -20)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .padding(5)
                    }
                }
                
                Annotation("Fortress Sydney", coordinate: .fortressSydney) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.blue)
                            .frame(width:35,height:35)
                        Button {
                            checkInList = true
                            checkInPlaceNo = 1
                        }label: {
                            Image(systemName: "gamecontroller.fill")
                                .foregroundStyle(.white)
                        }

                        Circle()
                            .offset(x: 20, y: -20)
                            .fill(.blue)
                        Text("4")
                            .offset(x: 20, y: -20)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .padding(5)
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
            .offset(y:75)
            
            
            HeaderView()
            
            VStack(alignment:.leading){
                Text("Auto Check-in")
                Toggle(isOn: $vibrateOnRing) {
                }
                    .offset(x:-340)
            }
            .frame(width:.infinity, height:200)
            .offset(x:10,y:-240)


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
                    
                    if checkInPlaceNo == 0{
                        PeopleView()
                            .frame(width: rectangleWidth, height: rectangleHeight)
                            .offset(offset)
                            .position(x: rectangleWidth/2, y: rectangleHeight + 36)
                    }
                    else if checkInPlaceNo == 1{
                        FortressSydneyView()
                            .frame(width: rectangleWidth, height: rectangleHeight)
                            .offset(offset)
                            .position(x: rectangleWidth/2, y: rectangleHeight + 36)
                    }
                    else if checkInPlaceNo == 2{
                        HotelView()
                            .frame(width: rectangleWidth, height: rectangleHeight)
                            .offset(offset)
                            .position(x: rectangleWidth/2, y: rectangleHeight + 36)
                    }
                    else if checkInPlaceNo == 3{
                        EpicCoffeeView()
                            .frame(width: rectangleWidth, height: rectangleHeight)
                            .offset(offset)
                            .position(x: rectangleWidth/2, y: rectangleHeight + 36)
                    }
                    else if checkInPlaceNo == 4{
                        SydneyLocalLibraryView()
                            .frame(width: rectangleWidth, height: rectangleHeight)
                            .offset(offset)
                            .position(x: rectangleWidth/2, y: rectangleHeight + 36)
                    }
                }
            }
        }
    }
    var dragGesture: some Gesture {
    DragGesture()
        .onChanged {
            value in
            @State var rectY = value.startLocation.y + value.translation.height
            if rectY < 210 && rectY > -450{
                offset = CGSize(width: 0, height: rectY)
            }
            else if rectY >= 210{
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
    static let alpacaCafe = CLLocationCoordinate2D(latitude:    -33.88386359778099, longitude: 151.2014035499774)
    static let epicCoffee = CLLocationCoordinate2D(latitude: -33.884535570309076, longitude: 151.19885205603353)
    static let sydneyLibrary = CLLocationCoordinate2D(latitude: -33.884569732024154, longitude: 151.19709903919133)
    static let abercrombieHotel = CLLocationCoordinate2D(latitude: -33.8874295, longitude: 151.1986847)
    static let fortressSydney = CLLocationCoordinate2D(latitude: -33.88461644233929, longitude: 151.20067320728768)
}
