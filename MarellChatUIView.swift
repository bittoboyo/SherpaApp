//
//  SwiftUIView.swift
//  SherpaApp
//
//  Created by Sara Georgiana Florea on 21/11/2023.
//

import SwiftUI

struct MarellMessage: Identifiable {
    let id = UUID()
    let text: String
    let isSentByCurrentUser: Bool
    //let userName: String
}
//class MarellChatViewModel: ObservableObject {
//    @Published var messages: [Message] = []
//
//    func sendMessage(_ messageText: String) {
//        let newMessage = Message(text: messageText, isSentByCurrentUser: true)
//        messages.append(newMessage)
//    }
//}

    struct MarellMessageRow: View {
        var message: Message
        
        var body: some View {
            HStack {
                if message.isSentByCurrentUser {
                    Spacer()
                }
                Text(message.text)
                    .padding()
                    .background(message.isSentByCurrentUser ? Color.blue : Color.gray)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                if !message.isSentByCurrentUser {
                    Spacer()
                }
            }
            .padding(message.isSentByCurrentUser ? .leading : .trailing)
            .padding(.horizontal)
    
        }
    }
    
struct MarellChatUIView: View {
    @ObservedObject var viewModel = ChatViewModel()
    @State private var messageText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                MarellProfilePic()
                // List of messages
                ScrollView {
                    ForEach(viewModel.messages) { message in
                        MessageRow(message: message)
                    }
                }
                
                // Message input field
                HStack {
                    TextField("Type Message", text: $messageText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button("Send") {
                        viewModel.sendMessage(messageText)
                        messageText = ""
                    }
                    //Profile
                    
                }.padding()
            }
        }
    }
}

struct MarellBlueMessageBox: View {
    var body: some View {
        Text("Wanna grab coffee?")
            .padding() // Adjust padding to your preference
            .background(Color.gray) // Sets the background color to blue
            .opacity(0.6)
            .foregroundColor(.black) // Sets the text color to white
            .cornerRadius(10) // Rounded corners
        // Add more styling and modifiers as needed
    }
}

struct MarellProfilePic: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack{
                
                HStack {
                    
                    Image("Marell")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 48.0, height: 50)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    
                    VStack(alignment: .leading) {
                        Text("Marell Bito")
                            .font(.headline)
                        Text("Serious Game Researcher at UTS")
                            .font(.subheadline)
                    }
                    Spacer()
                }
                .padding()
                .foregroundColor(.primary)
                .background(Color.primary
                    .colorInvert()
                    .opacity(0.75))
                MarellBlueMessageBox()
                    .offset(x: -90, y: 10)
                    
                    
            }
        }
    }
}
    
//struct ChatSession: Identifiable {
//    let id = UUID()
//    let userName: String
//    let lastMessage: String
//    let timestamp: String // Simplified as a string
//
//}
//
//struct ChatSessionRow: View {
//    var session: ChatSession
//
//    var body: some View {
//        HStack {
//            Circle() // Placeholder for user image
//                .frame(width: 48.0, height: 50)
//                .foregroundColor(.gray)
//
//            VStack(alignment: .leading) {
//                Text(session.userName).fontWeight(.bold)
//                Text(session.lastMessage)
//                    .foregroundColor(.gray)
//                    .lineLimit(1)
//
//            }
//
//            Spacer()
//
//            Text(session.timestamp)
//                .foregroundColor(.gray)
//        }
//
//    }
//}

struct MarellChatUIView_Previews: PreviewProvider {
    static var previews: some View {
        MarellChatUIView()
    }
}

