import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {

            //Profile picture
            Image("John")
                .resizable()
                .scaledToFit()
                .frame(height: 125)
                .clipShape(Circle())
            
            //Name and industry
            HStack{
                Text("John Smith")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                
                Text("IT")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 30)
                    .background(.blue)
                    .cornerRadius(5)
            }
            
            //Job position and company
            Text("Interaction Designer at Apple")
                .font(.title2)
                .foregroundColor(.black)
            
            //Skills
            HStack{
                Text("html")
                    .font(.headline)
                    .foregroundColor(.black)
                    .frame(width: 100, height: 25)
                    .background(Color(red:0.9,green:0.9,blue:0.9))
                    .cornerRadius(5)
                
                Text("Figma")
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
            .padding(.bottom, 20)
            
            //Send Message button and Save Contact
            HStack {
                Button("Send Message") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .font(.system(.headline))
                .foregroundColor(.black)
                .frame(maxWidth: 150, maxHeight: 30)
                .background(Color(red:0.9,green:0.9,blue:0.9))
                .cornerRadius(15)
                
                Button("Save Contact") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .font(.system(.headline))
                .foregroundColor(.black)
                .frame(maxWidth: 150, maxHeight: 30)
                .background(Color(red:0.9,green:0.9,blue:0.9))
                .cornerRadius(15)
            }
            .padding(.bottom, 20)
            
            //Icebreaker
            VStack(alignment: .leading){
                Text("Icebreaker")
                    .font(.system(.title2))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,10)
                
                Text("The one thing I can’t live without is my cat Apollo, especially when I’m working on Figma and other tasks!")
                //                        .frame(width: 180, height: 50)
                    .font(.system(.body))
                //                    .foregroundColor(.black)
                    .padding(.horizontal,10)
            }
            .frame(width: 350, height: 120)
            .background(Color(red:0.9,green:0.9,blue:0.9))
            .cornerRadius(5)
            .padding(.bottom, 20)
            
            //Experience
            VStack{
                Text("Experience")
                    .font(.system(.body))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    Image("John")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 50, alignment: .leading)
                        .clipShape(Circle())
                    
                    VStack{
                        Text("Interaction Designer")
                            .font(.system(.caption))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Apple")
                            .font(.system(.caption))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("1 year 8 months")
                            .font(.system(.caption))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 20)
            
            //Education
            VStack{
                Text("Education")
                    .font(.system(.body))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    Image("John")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 50, alignment: .leading)
                        .clipShape(Circle())
                    
                    VStack{
                        Text("University of Technology Sydney")
                            .font(.system(.caption))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Master of Interaction Design")
                            .font(.system(.caption))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("2020-2022")
                            .font(.system(.caption))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 20)
            
            //Check LinkedIn Profile Button
            Button("LinkedIn") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .font(.system(.headline))
            .foregroundColor(.black)
            .frame(maxWidth: 150, maxHeight: 30)
            .background(Color(red:0.9,green:0.9,blue:0.9))
            .cornerRadius(15)

        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
