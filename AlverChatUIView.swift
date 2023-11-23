//
//  SwiftUIView.swift
//  SherpaApp
//
//  Created by Sara Georgiana Florea on 21/11/2023.
//

import SwiftUI

struct AlverMessage: Identifiable {
    let id = UUID()
    let text: String
    let isSentByCurrentUser: Bool
    //let userName: String
}
//class AlverChatViewModel: ObservableObject {
//    @Published var messages: [Message] = []
//
//    func sendMessage(_ messageText: String) {
//        let newMessage = Message(text: messageText, isSentByCurrentUser: true)
//        messages.append(newMessage)
//    }
//}

    struct AlverMessageRow: View {
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
    
struct AlverChatUIView: View {
    @ObservedObject var viewModel = ChatViewModel()
    @State private var messageText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                AlverProfilePic()
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

struct AlverBlueMessageBox: View {
    var body: some View {
        Text("What are you working on?")
            .padding() // Adjust padding to your preference
            .background(Color.gray) // Sets the background color to blue
            .opacity(0.6)
            .foregroundColor(.black) // Sets the text color to white
            .cornerRadius(10) // Rounded corners
        // Add more styling and modifiers as needed
    }
}

struct AlverProfilePic: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack{
                
                HStack {
                    
                    Image("AlverR")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 48.0, height: 50)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    
                    VStack(alignment: .leading) {
                        Text("Alver Remolar")
                            .font(.headline)
                        Text("Prompt Engineer at Sherpa")
                            .font(.subheadline)
                    }
                    Spacer()
                }
                .padding()
                .foregroundColor(.primary)
                .background(Color.primary
                    .colorInvert()
                    .opacity(0.75))
                AlverBlueMessageBox()
                    .offset(x: -70, y: 10)
                    
                    
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

struct AlverChatUIView_Previews: PreviewProvider {
    static var previews: some View {
        AlverChatUIView()
    }
}

