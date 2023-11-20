//
//  RowUser.swift
//  SherpaApp
//
//  Created by Yaxuan Zhang on 17/11/2023.
//

import SwiftUI
import Foundation

    var users: [Users] = load("UsersData.json")
    func load<T: Decodable>(_ UsersData: String) -> T {
        let data: Data
        
        
        guard let file = Bundle.main.url(forResource: UsersData, withExtension: nil)
        else {
            fatalError("Couldn't find \(UsersData) in main bundle.")
        }
        
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(UsersData) from main bundle:\n\(error)")
        }
        
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(UsersData) as \(T.self):\n\(error)")
        }
    }

