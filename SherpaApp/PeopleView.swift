import SwiftUI

struct PeopleView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Alpaca Cafe")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: 360, alignment: .leading)
                        .padding(.top, 20)
                        .offset(x: 10, y: 10)
                    
                    Button {
                    } label: {
                        Image(systemName: "arrow.triangle.turn.up.right.diamond.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                            .offset(x: -20, y: 10)
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                }
                Divider()
                    .padding(.bottom, 10)
                
                Text("Recently Added")
                    .font(.title3)
                    .frame(maxWidth: 360, alignment: .leading)
                
                listPeople(
                    profilePhoto: "John",
                    name: "John Smith",
                    occupation: "Interaction Designer at apple",
                    industry: "IT",
                    skill: "Swift",
                    skill1: "Figma",
                    skill2: "PM",
                    description: "“The one thing I can’t live without is my cat Apollo, especially when I’m working on Figma and other tasks!”"
                )
                listPeople(
                    profilePhoto: "MaryP",
                    name: "Mary Pops",
                    occupation: "Product Manager at Sherpa",
                    industry: "IT",
                    skill: "UI",
                    skill1: "UX",
                    skill2: "Research",
                    description: "“Taking a break from my project, I’m here for the networking and of course, a latte.”"
                )
                listPeople(
                    profilePhoto: "EvaM",
                    name: "Eva Martinez",
                    occupation: "Medical Researcher at Medical Center",
                    industry: "Healthcare",
                    skill: "DA",
                    skill1: "Medi-R",
                    skill2: "Empathy",
                    description: "“Committed to advancing medical knowledge through research and analysis.”"
                )
            }
        }
        
    }
}

func listPeople(profilePhoto: String,
                 name: String,
                 occupation: String,
                 industry: String,
                 skill: String,
                 skill1: String,
                 skill2: String,
                 description: String)
-> some View {
    return ZStack {
        RoundedRectangle(cornerRadius: 20)
            .stroke(.gray, lineWidth: 1)
            .fill(Color.white)
            .frame(width: 370, height: 200)
            .shadow(color: .gray, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
        HStack {
            Image(profilePhoto)
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .clipShape(Circle())
                .offset(x: 18, y: -10)
            VStack {
                HStack{
                    Text(name)
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth: 200, alignment: .leading)
                        .offset(x:7, y:-5)
                    Text(industry)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .background(.blue)
                        .cornerRadius(5)
//                        .frame(maxWidth: 190, alignment: .leading)
                }
                HStack{
                    Text(skill)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .background(.gray)
                        .cornerRadius(5)
//                        .frame(maxWidth: 190, alignment: .leading)
                    
                        .offset(x:14, y:0)
                    Text(skill1)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .background(.gray)
                        .cornerRadius(5)
//                        .frame(maxWidth: 190, alignment: .leading)
//                        .offset(x:4, y:0)
                    //
                    Text(skill2)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .background(.gray)
                        .cornerRadius(5)
//                        .frame(maxWidth: 190, alignment: .leading)
//                        .offset(x:-25, y:0)
                }
//
                
                Text(occupation)
                    .font(.subheadline)
                    .frame(maxWidth:300, alignment: .leading)
                    .offset(x:26, y:5)
                    .padding(.bottom, 5)
                
                Text(description)
                    .font(.footnote)
                    .frame(width: 270, alignment: .leading)
                    .offset(x:12, y:5)
                    .padding(.bottom, 5)
            }
            Button {
            } label: {
                Image(systemName: "chevron.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 10)
                    .offset(x: -15, y: -3)
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
