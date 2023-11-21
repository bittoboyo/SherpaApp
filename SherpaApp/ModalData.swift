//
//  RowUser.swift
//  SherpaApp
//
//  Created by Yaxuan Zhang on 17/11/2023.
//

import SwiftUI
import Foundation

    var users: [Users] = load("User.json")
    func load<T: Decodable>(_ User: String) -> T {
        let data: Data
        
        
        guard let file = Bundle.main.url(forResource: User, withExtension: nil)
        else {
            fatalError("Couldn't find \(User) in main bundle.")
        }
        
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(User) from main bundle:\n\(error)")
        }
        
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(User) as \(T.self):\n\(error)")
        }
    }

