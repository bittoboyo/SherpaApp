//
//  JohnProfileView.swift
//  SherpaApp
//
//  Created by Yu Ching Wong on 22/11/2023.
//

import SwiftUI

struct SunnyProfileView: View {
    @Environment(\.openURL) var openURL
    @State public var isBookmarked = true
    
    var body: some View {
    NavigationView{
        ZStack{
            ScrollView{
                VStack {
                    Toggle(isOn: $isBookmarked) {
                        Image(systemName: isBookmarked ? "bookmark.fill" : "bookmark")
                            .font(.system(size: 30))
                    }
                    .toggleStyle(.button)
                    .offset(x: 160, y: 55)
                    
                    //Profile picture
                    Image("Sunny")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 125, minHeight: 125)
                        .clipShape(Circle())
                    
                    //Name and industry
                    HStack{
                        Text("Sunny Wong")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                        
                        Text("IT")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.horizontal, 30)
                            .background(Color(red:0.9,green:0.9,blue:0.9))
                            .cornerRadius(5)
                    }
                    
                    //Job position and company
                    Text("UX/UI Designer at Sherpa")
                        .font(.title2)
                        .foregroundColor(.black)
                    
                    //Skills
                    HStack{
                        Text("Figma")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(width: 100, height: 25)
                            .background(Color(red:0.9,green:0.9,blue:0.9))
                            .cornerRadius(5)
                        
                        Text("User Flow")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(width: 100, height: 25)
                            .background(Color(red:0.9,green:0.9,blue:0.9))
                            .cornerRadius(5)
                        
                        Text("Proj Mgt")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(width: 100, height: 25)
                            .background(Color(red:0.9,green:0.9,blue:0.9))
                            .cornerRadius(5)
                    }
                    .padding(.bottom, 10)
                    
                    //Send Message button
                    VStack {
                        Button{
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }label:{
                            HStack{
                                Image(systemName: "paperplane.fill")
                                    .imageScale(.medium)
                                    .foregroundColor(.white)
                                
                                Text("Message")
                                    .foregroundColor(.white)
                                    .font(.headline)
                            }
                            .frame(width: 300, height: 30)
                            .background(.blue)
                            .cornerRadius(15)
                        }
                    }
                    .padding(.bottom, 10)
                    
                    //Icebreaker
                    VStack(alignment: .leading){
                        Text("Icebreaker")
                            .font(.system(.title2))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal,10)
                        
                        Text("Believe in making impact with design. Interested in the crossover of serious game and cultural sector. 🎮")
                        //                        .frame(width: 180, height: 50)
                            .font(.system(.body))
                        //                    .foregroundColor(.black)
                            .padding(.horizontal,10)
                    }
                    .frame(width: 350, height: 120)
                    .background(Color(red:0.9,green:0.9,blue:0.9))
                    .cornerRadius(5)
                    .padding(.bottom, 10)
                    Divider()
                    //Experience
                    VStack{
                        Text("Experience")
                            .font(.system(.body))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack{
                            Image("Alpaca")
                                .resizable()
                                .scaledToFit()
                                .frame(width:50,height: 50)
                            
                            VStack{
                                Text("UX/UI Designer")
                                    .font(.system(.caption))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("Sherpa")
                                    .font(.system(.caption))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("October 2023 - Present")
                                    .font(.system(.caption))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                        .padding(.bottom, 10)
                        
                        HStack{
                            Image("Powerhouse")
                                .resizable()
                                .scaledToFit()
                                .frame(width:50,height: 50)
                            
                            VStack{
                                Text("Digital Product Designer")
                                    .font(.system(.caption))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("Powerhouse Museum")
                                    .font(.system(.caption))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("6 months")
                                    .font(.system(.caption))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                    }
                    .padding(.horizontal, 30)
                    .padding(.vertical, 5)
                    
                    
                    Divider()
                    //Education
                    VStack{
                        Text("Education")
                            .font(.system(.body))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack{
                            Image("UTS_logo")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50, alignment: .leading)
                            //                            .clipShape(Circle())
                            
                            VStack{
                                Text("University of Technology Sydney")
                                    .font(.system(.caption))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("Master of Interaction Design")
                                    .font(.system(.caption))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("2023-2024")
                                    .font(.system(.caption))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                    }
                    .padding(.horizontal,30)
                    .padding(.vertical, 5)
                    Divider()
                    //Check LinkedIn Profile Button
                    Button{
                        openURL(URL(string: "https://au.linkedin.com/in/sunny-yu-ching-wong")!)
                    }label: {
                        HStack{
                            Text("Check LinkedIn Profile")
                            Image(systemName: "arrow.right")
                        }
                    }
                    Rectangle()
                        .frame(width:.infinity,height: 300)
                        .foregroundStyle(.white)
                }
                .offset(y:-20)
            }
            Rectangle()
                .frame(width:.infinity,height: 80)
                .foregroundStyle(.white)
                .position(x:200, y:-40)
            }
        }
    }
}

#Preview {
    SunnyProfileView()
}
