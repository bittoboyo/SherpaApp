//
//  Users.swift
//  SherpaApp
//
//  Created by Yaxuan Zhang on 17/11/2023.
//

import Foundation
import SwiftUI
import CoreLocation
struct Users: Hashable, Codable {
    var name: String
    var industry: String
    var skills: String
    var occupation: String
    var description: String
    
    
    private var imageName: String
    var image: Image
    {Image(imageName)}
    
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}




