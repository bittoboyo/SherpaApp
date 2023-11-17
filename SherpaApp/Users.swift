//
//  Users.swift
//  SherpaApp
//
//  Created by Yaxuan Zhang on 17/11/2023.
//

import Foundation
struct Users: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
