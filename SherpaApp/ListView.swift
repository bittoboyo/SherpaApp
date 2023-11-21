//
//  ListView.swift
//  SherpaApp
//
//  Created by Yaxuan Zhang on 21/11/2023.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack {
            VStack{
                Button("< Back") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .frame(maxWidth: 360, alignment: .leading)
                .padding(.bottom, 5)
                
                Text("Saved Contacts")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: 360, alignment: .leading)
                
                Text("Recently Added")
                    .font(.title2)
                    .frame(maxWidth: 360, alignment: .leading)
                Divider()
                    .padding(.bottom, 10)
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .frame(width: 360, height: 150)
                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                HStack {
                    Image("John")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .clipShape(Circle())
                    VStack {
                        Text("John Smith")
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(maxWidth: 190, alignment: .leading)
                        Text("Interaction Designer" + "\n" + "at Apple")
                            .font(.subheadline)
                            .frame(maxWidth: 190, alignment: .leading)
                            .padding(.bottom, 5)
                        Text("IT")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .background(.blue)
                            .cornerRadius(5)
                            .frame(maxWidth: 190, alignment: .leading)
                    }
                    Button {
                    } label: {
                        Image(systemName: "bookmark.fill")
                            .controlSize(.large)
                            .offset(y: -30)
                    }
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
