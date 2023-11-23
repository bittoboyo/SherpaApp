//
//  ChatHistoryView.swift
//  SherpaApp
//
//  Created by Yu Ching Wong on 23/11/2023.
//

import SwiftUI

struct ChatHistoryView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Chats")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: 360, alignment: .leading)
                    .padding(.top, 20)
                Divider()
                    .padding(.bottom, 10)
                
                
                NavigationLink(destination: ChatView()){
                    chatHistory(
                        profilePhoto: "John",
                        name: "John Smith",
                        status: "Nice to meet you :D · now",
                        industry: "IT"
                    )
                }
                NavigationLink(destination: ChatView()){
                    chatHistory(
                        profilePhoto: "MaryP",
                        name: "Mary Pops",
                        status: "What are you working on? · 48m",
                        industry: "IT"
                    )
                }
                NavigationLink(destination: ChatView()){
                    chatHistory(
                        profilePhoto: "EvaM",
                        name: "Eva Miller",
                        status: "Wanna grab coffee? · 10:23am",
                        industry: "IT"
                    )
                }
                Spacer()
            }
        }
    }
}
func chatHistory (
    profilePhoto: String,
    name: String,
    status: String,
    industry: String)-> some View {
return
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(width: .infinity,height: 80)
                HStack {
                    Image(profilePhoto)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70)
                        .clipShape(Circle())
                    VStack (alignment:.leading){
                        HStack{
                            Text(name)
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                            Text(industry)
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.horizontal, 20)
                                .background(.blue)
                                .cornerRadius(5)
                                .frame(maxWidth: 200, alignment: .leading)
                        }
                        
                        
                        Text(status)
                            .font(.subheadline)
                            .frame(maxWidth: 500, alignment: .leading)
                            .padding(.bottom, 5)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.horizontal,20)

    }
}

#Preview {
    ChatHistoryView()
}
