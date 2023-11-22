import SwiftUI

struct UserProfileView: View {
    @Environment(\.openURL) var openURL
    @State private var isBookmarked = false
    
    var body: some View {

    NavigationView{
        VStack {
            Text("Profile")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: 360, alignment: .leading)
                .padding(.top, 20)
            Divider()
                .padding(.bottom, 10)
            
            //Profile picture
            Image("Sam")
                .resizable()
                .scaledToFit()
                .frame(width:125)
                .clipShape(Circle())
     
                //Name and industry
                HStack{
                    Text("Sam Fergus")
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
                Text("UX/UI Designer at Till Payments")
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
                    
                    Text("SaaS")
                        .font(.headline)
                        .foregroundColor(.black)
                        .frame(width: 100, height: 25)
                        .background(Color(red:0.9,green:0.9,blue:0.9))
                        .cornerRadius(5)
                    
                    Text("Product")
                        .font(.headline)
                        .foregroundColor(.black)
                        .frame(width: 100, height: 25)
                        .background(Color(red:0.9,green:0.9,blue:0.9))
                        .cornerRadius(5)
                }
                .padding(.bottom, 10)
           
            //Send Message button
            VStack {
                HStack{
                    Button{
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }label:{
                        HStack{
                            Image(systemName: "pencil")
                                .imageScale(.medium)
                                .foregroundColor(.white)
                            
                            Text("Edit Profile")
                                .foregroundColor(.white)
                                .font(.headline)
                        }
                        .frame(width: 150, height: 30)
                        .background(.blue)
                        .cornerRadius(15)
                    }
                    
                    Button{
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                     .stroke(.blue, lineWidth: 1)
                                     .fill(Color.white)
                                     .frame(width: 150, height: 30)
                                     .background(.white)
                            HStack{
                                Image(systemName: "square.and.arrow.up.fill")
                                    .imageScale(.medium)
                                    .foregroundColor(.blue)
                                
                                Text("Share Profile")
                                    .foregroundColor(.blue)
                                    .font(.headline)
                            }
                        }
                    }
                }
                
            }
            .padding(.bottom, 10)
            
                
                //Icebreaker
                VStack(alignment: .leading){
                    Text("Icebreaker")
                        .font(.system(.title2))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal, 8)
                    Text("Entrepreneur mind. Always work with coffee, jazz music, and my cat Orlah.")
                        .font(.system(.body))
                        .padding(.horizontal, 8)
                }
                .frame(width: 350, height: 100)
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
                        Image( "TillPayments_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width:50,height: 50)
                        
                        VStack{
                            Text("UX/UI Designer")
                                .font(.system(.caption))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("Till Payments")
                                .font(.system(.caption))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("1 year 1 month")
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
                        Image("USYD_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50, alignment: .leading)
//                            .clipShape(Circle())
                        
                        VStack{
                            Text("The University of Sydney")
                                .font(.system(.caption))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("Master of Interaction Design")
                                .font(.system(.caption))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("2021-2023")
                                .font(.system(.caption))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
                .padding(.horizontal,30)
                .padding(.vertical, 5)
                Divider()
                //Check LinkedIn Profile Button
//                Button{
//                    openURL(URL(string: "https://au.linkedin.com")!)
//                }label: {
//                    HStack{
//                        Text("Check LinkedIn Profile")
//                        Image(systemName: "arrow.right")
//                    }
//                }
            }
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
