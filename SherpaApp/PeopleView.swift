import SwiftUI

struct PeopleView: View {
    @State private var favoriteColor = "All"
       var colors = ["All", "Industry"]
    var body: some View {
    NavigationView{
        VStack {
            HStack {
                VStack{
                    Text("Alpaca Cafe")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: 360, alignment: .leading)
                        .padding(.top, 20)
                    HStack{
                        Image(systemName: "figure.walk")
                            .font(.body)
                        Text("3 mins walk")
                            .font(.body)
                            .frame(maxWidth: 360, alignment: .leading)
                    }
                }
                Button {
                } label: {
                    Image(systemName: "arrow.triangle.turn.up.right.diamond.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .offset(x: 0, y: 10)
                }
            }
            .padding(.horizontal)
            Divider()
                .padding(.bottom, 10)
            
            Picker("", selection: $favoriteColor) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)

                ScrollView {
                    Spacer()
                    if favoriteColor == "All"
                    {
                        
                        listPeople(
                            profilePhoto: "BobLe",
                            name: "Bob Anderson",
                            occupation: "Financial Analyst at ABC Bank",
                            industry: "Finance",
                            skill: "Risk Manag",
                            skill1: "BA",
                            skill2: "Communication",
                            description: "“Dedicated to providing accurate financial insights to support business decisions.”"
                        )
                        listPeople(
                            profilePhoto: "EvaM",
                            name: "Eva Miler",
                            occupation: "Researcher at Medical Center",
                            industry: "Health",
                            skill: "DA",
                            skill1: "Medi-R",
                            skill2: "Empathy",
                            description: "“Committed to advancing medical knowledge through research and analysis.”"
                        )
                        NavigationLink(destination: JohnProfileView()) {
                            listPeople(
                                profilePhoto: "John",
                                name: "John Smith",
                                occupation: "Interaction Designer at Apple",
                                industry: "IT",
                                skill: "Swift",
                                skill1: "Figma",
                                skill2: "PM",
                                description: "“The one thing I can’t live without is my cat Apollo, especially when I’m working on Figma and other tasks!”"
                            )
                        }.foregroundStyle(.black)
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
                    }
                    else{
                        NavigationLink(destination: JohnProfileView()) {
                            listPeople(
                                profilePhoto: "John",
                                name: "John Smith",
                                occupation: "Interaction Designer at Apple",
                                industry: "IT",
                                skill: "Swift",
                                skill1: "Figma",
                                skill2: "PM",
                                description: "“The one thing I can’t live without is my cat Apollo, especially when I’m working on Figma and other tasks!”"
                            )
                        }.foregroundStyle(.black)
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
                    }
                    Rectangle()
                        .frame(width:.infinity,height: 300)
                        .foregroundColor(.white)
                }
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
        
        //Frame
        RoundedRectangle(cornerRadius: 20)
            .stroke(.gray, lineWidth: 1)
            .fill(Color.white)
            .frame(width: 360, height: 180)
//            .shadow(color: .gray, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
        
        //Member card info
        HStack {
            Image(profilePhoto)
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .clipShape(Circle())
            
            //Member details
            VStack(alignment: .leading) {
                HStack{
                    Text(name)
                        .font(.title2)
                        .fontWeight(.bold)

                    Text(industry)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 80, height: 20)
                        .background(.blue)
                        .cornerRadius(5)
                }
                
                HStack{
                    Text(skill)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width: 70, height: 20)
                        .background(Color(red:0.9,green:0.9,blue:0.9))
                        .cornerRadius(5)

                    Text(skill1)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width: 70, height: 20)
                        .background(Color(red:0.9,green:0.9,blue:0.9))
                        .cornerRadius(5)


                    Text(skill2)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width: 70, height: 20)

                        .background(Color(red:0.9,green:0.9,blue:0.9))
                        .cornerRadius(5)
                }

                Text(occupation)
                    .font(.subheadline)
                    .frame(maxWidth:300, alignment: .leading)
                    .padding(.bottom, 5)
                
                Text(description)
                    .font(.footnote)
                    .frame(width: 230, alignment: .leading)
                    .padding(.bottom, 5)
            }
//            Button {
//             } label: {
//                 Image(systemName: "chevron.right")
//                     .resizable()
//                     .scaledToFit()
//                     .frame(width: 10)
//                     .offset(x: -15, y: -3)
//                 /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//             }
        }
        .padding(.horizontal, 30)
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
