//
//  SwiftUIView.swift
//  SherpaApp
//
//  Created by Sara Georgiana Florea on 24/11/2023.
//

import SwiftUI

struct SaraProfileView: View {
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
                    Image("SaraF")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 125)
                        .clipShape(Circle())
                    
                    //Name and industry
                    HStack{
                        Text("Sara Florea")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                        
                        Text("Consultancy")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.horizontal, 05)
                            .background(Color(red:0.9,green:0.9,blue:0.9))
                            .cornerRadius(5)
                    }
                    
                    //Job position and company
                    Text("Political Consultant")
                        .font(.title2)
                        .foregroundColor(.black)
                    
                    //Skills
                    HStack{
                        Text("Bloomberg")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(width: 100, height: 25)
                            .background(Color(red:0.9,green:0.9,blue:0.9))
                            .cornerRadius(5)
                        
                        Text("Research")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(width: 100, height: 25)
                            .background(Color(red:0.9,green:0.9,blue:0.9))
                            .cornerRadius(5)
                        
                        Text("Leadership")
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
                        
                        Text("Problem-solver with entrepreneurial mindset🌏 My background is in Finance, Economics and Mathematics. ")
                    //.frame(width: 180, height: 50)
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
                                Text("Project Coordinator")
                                    .font(.system(.caption))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("Sherpa")
                                    .font(.system(.caption))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("October 2023")
                                    .font(.system(.caption))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                        .padding(.bottom, 10)
                        
                        HStack{
                            Image("UEL_logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width:50,height: 50)
                            
                            VStack{
                                Text("Lecturer")
                                    .font(.system(.caption))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("University of East London")
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
                                
                                Text("Master of Mathematics and Quantitative Finance")
                                    .font(.system(.caption))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("2020-2022")
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
                        openURL(URL(string: "https://www.linkedin.com/in/sara-georgiana-florea")!)
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
    SaraProfileView()
}

