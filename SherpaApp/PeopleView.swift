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
                }
                Divider()
                    .padding(.bottom, 10)
                
                Text("Recently Added")
                    .font(.title3)
                    .frame(maxWidth: 360, alignment: .leading)
                
                listPeople(
                    profilePhoto: "John",
                    name: "John Smith",
                    jobTitle: "Interaction Designer",
                    company: "Apple",
                    industry: "IT",
                    skill: "Xcode",
                    description: "“The one thing I can’t live without is my cat Apollo, especially when I’m working on Figma and other tasks!”"
                )
        
            }
        }
        
    }
}

func listPeople(profilePhoto: String,
                 name: String,
                 jobTitle: String,
                 company: String,
                 industry: String,
                 skill: String,
                 description: String)
-> some View {
    return ZStack {
        RoundedRectangle(cornerRadius: 20)
            .stroke(.gray, lineWidth: 1)
            .fill(Color.white)
            .frame(width: 370, height: 200)
        HStack {
            Image(profilePhoto)
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .clipShape(Circle())
                .offset(x: 10, y: -10)
            VStack {
                HStack{
                    Text(name)
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth: 180, alignment: .leading)
                    Text(industry)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .background(.blue)
                        .cornerRadius(5)
//                        .frame(maxWidth: 190, alignment: .leading)
                }
                Text(skill)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .background(.gray)
                    .cornerRadius(5)
                    .frame(maxWidth: 190, alignment: .leading)
                
                Text(jobTitle + "\n" + "at " + company)
                    .font(.subheadline)
                    .frame(maxWidth: 190, alignment: .leading)
                    .padding(.bottom, 5)
                
                Text(description)
                    .font(.footnote)
                    .frame(width: 220, alignment: .leading)
                    .padding(.bottom, 5)
            }
            Button {
            } label: {
                Image(systemName: "chevron.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 10)
                    .offset(x: 0, y: -3)
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
