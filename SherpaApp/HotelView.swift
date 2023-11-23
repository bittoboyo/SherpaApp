import SwiftUI

struct HotelView: View {
    @State private var favoriteColor = "All"
       var colors = ["All", "Industry"]
    var body: some View {
    NavigationStack{
        VStack {
            HStack {
                VStack{
                    Text("Abercrombie Hotel")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: 360, alignment: .leading)
                        .padding(.top, 20)
                    HStack{
                        Image(systemName: "figure.walk")
                            .font(.body)
                        Text("16 mins walk")
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
                        
                        NavigationLink(destination: AlverProfileView()){
                            listPeople(
                                profilePhoto: "AlverR",
                                name: "Alver Remolar",
                                occupation: "Prompt Engineer at Sherpa",
                                industry: "IT",
                                skill: "ChatGPT",
                                skill1: "Midjourney",
                                skill2: "Lang Model",
                                description: "“Passionate about AI. Let's meet! 🚀”"
                            )
                            .foregroundColor(.black)
                        }
                        
                        listPeople(
                            profilePhoto: "EvaM",
                            name: "Alex Harper",
                            occupation: "Graphic Designer at PixelCraft Studios",
                            industry: "Design",
                            skill: "Adobe Creative Cloud",
                            skill1: "Branding",
                            skill2: "Remote Collaboration",
                            description: "“Illustrating ideas from a distance.”"
                        )
                            listPeople(
                                profilePhoto: "John",
                                name: "Casey Baker",
                                occupation: "Financial Analyst at BudgetMinds LLC",
                                industry: "Finance",
                                skill: "Budget Analysis",
                                skill1: "Remote Financial Reporting",
                                skill2: "Spreadsheet Mastery",
                                description: "“Balancing numbers remotely.”"
                            )

                        listPeople(
                            profilePhoto: "MaryP",
                                name: "Samuel Turner",
                            occupation: "Online Therapist at SereneMind Counseling",
                            industry: "Counseling",
                            skill: "Teletherapy",
                            skill1: "Emotional Support",
                            skill2: "Stress Management",
                            description: "“Providing virtual solace.”"
                        )
                    }
                    else{

                            listPeople(
                                profilePhoto: "AlverR",
                                name: "Alver Remolar",
                                occupation: "Prompt Engineer at Sherpa",
                                industry: "IT",
                                skill: "ChatGPT",
                                skill1: "Midjourney",
                                skill2: "Lang Model",
                                description: "“Passionate in exploring the endless possibilities of AI. Let's meet at Abercrombie Hotel! 🚀”"
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


struct HotelView_Previews: PreviewProvider {
    static var previews: some View {
        HotelView()
    }
}
