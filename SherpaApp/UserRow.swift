//
//  UserRow.swift
//  SherpaApp
//
//  Created by Sara Georgiana Florea on 20/11/2023.
//

import SwiftUI

struct UserRow: View {
    var user: Users


    var body: some View {
        HStack {
            Text(user.name)
        }
    }
}


#Preview {
    UserRow(user: users[0])
}
