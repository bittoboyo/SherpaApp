//
//  SwiftUIView.swift
//  SherpaApp
//
//  Created by Sara Georgiana Florea on 21/11/2023.
//

import SwiftUI

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isSentByCurrentUser: Bool
}
class ChatViewModel: ObservableObject {
    @Published var messages: [Message] = []

    func sendMessage(_ messageText: String) {
        let newMessage = Message(text: messageText, isSentByCurrentUser: true)
        messages.append(newMessage)
    }
}
struct MessageRow: View {
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
    }
}

struct ChatView: View {
    @ObservedObject var viewModel = ChatViewModel()
    @State private var messageText = ""

    var body: some View {
        VStack {
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
            }.padding()
        }
    }
}

struct ChatSession: Identifiable {
    let id = UUID()
    let userName: String
    let lastMessage: String
    let timestamp: String // Simplified as a string
}

struct ChatSessionRow: View {
    var session: ChatSession

    var body: some View {
        HStack {
            Circle() // Placeholder for user image
                .frame(width: 50, height: 50)
                .foregroundColor(.gray)

            VStack(alignment: .leading) {
                Text(session.userName).fontWeight(.bold)
                Text(session.lastMessage)
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }

            Spacer()

            Text(session.timestamp)
                .foregroundColor(.gray)
        }
        .padding()
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
