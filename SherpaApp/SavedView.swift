import SwiftUI

struct SavedView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Saved Contacts")
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
                
                savedPerson(
                    profilePhoto: "John",
                    name: "John Smith",
                    jobTitle: "Interaction Designer",
                    company: "Apple",
                    industry: "IT"
                )
                savedPerson(
                    profilePhoto: "MaryP",
                    name: "Mary Pops",
                    jobTitle: "UX Researcher",
                    company: "Microsoft",
                    industry: "IT"
                )
                savedPerson(
                    profilePhoto: "EvaM",
                    name: "Eva Miller",
                    jobTitle: "Data Scientist",
                    company: "Amazon",
                    industry: "IT"
                )
                savedPerson(
                    profilePhoto: "EvaM",
                    name: "Eva Miller",
                    jobTitle: "Data Scientist",
                    company: "Amazon",
                    industry: "IT"
                )
                savedPerson(
                    profilePhoto: "EvaM",
                    name: "Eva Miller",
                    jobTitle: "Data Scientist",
                    company: "Amazon",
                    industry: "IT"
                )
                savedPerson(
                    profilePhoto: "EvaM",
                    name: "Eva Miller",
                    jobTitle: "Data Scientist",
                    company: "Amazon",
                    industry: "IT"
                )
            }
        }
        
    }
}

func savedPerson(profilePhoto: String, name: String, jobTitle: String, company: String, industry: String) -> some View {
     return ZStack {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(width: 360, height: 150)
            .shadow(color: .gray, radius: 5, x: 5, y: 5)
        HStack {
            Image(profilePhoto)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .clipShape(Circle())
            VStack {
                Text(name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: 190, alignment: .leading)
                Text(jobTitle + "\n" + "at " + company)
                    .font(.subheadline)
                    .frame(maxWidth: 190, alignment: .leading)
                    .padding(.bottom, 5)
                Text(industry)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .background(.blue)
                    .cornerRadius(5)
                    .frame(maxWidth: 190, alignment: .leading)
            }
            Button {
            } label: {
                Image(systemName: "bookmark.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18)
                    .offset(x: -7, y: -30)
            }
        }
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
    }
}
