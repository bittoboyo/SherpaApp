import SwiftUI

struct FortressSydneyView: View {
    @State private var favoriteColor = "All"
       var colors = ["All", "Industry"]
    var body: some View {
    NavigationView{
        VStack {
            HStack {
                VStack{
                    Text("Fortress Sydney")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: 360, alignment: .leading)
                        .padding(.top, 20)
                    HStack{
                        Image(systemName: "figure.walk")
                            .font(.body)
                        Text("10 mins walk")
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
                            name: "Marell Bito",
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


struct FortressSydneyView_Previews: PreviewProvider {
    static var previews: some View {
        FortressSydneyView()
    }
}
