import SwiftUI

struct SydneyLocalLibraryView: View {
    @State private var favoriteColor = "All"
       var colors = ["All", "Industry"]
    var body: some View {
    NavigationView{
        VStack {
            HStack {
                VStack{
                    Text("Sydney Local Library")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: 360, alignment: .leading)
                        .padding(.top, 20)
                    HStack{
                        Image(systemName: "figure.walk")
                            .font(.body)
                        Text("1 min walk")
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
                            profilePhoto: "TaylorW",
                            name: "Taylor Williams",
                            occupation: "Content Writer at PenCraft Prose",
                            industry: "Writing",
                            skill: "SEO",
                            skill1: "Copy Editing",
                            skill2: "Time Management",
                            description: "“Crafting compelling narratives remotely. ”"
                        )
                        listPeople(
                            profilePhoto: "JordanL",
                            name: "Jordan Lee",
                            occupation: " Assistant at TaskMasters Inc.",
                            industry: "Admin",
                            skill: "Calendar Management",
                            skill1: "Customer Service",
                            skill2: "Task Prioritization",
                            description: "“Juggling tasks seamlessly from afar.”"
                        )
                            listPeople(
                                profilePhoto: "MorganC",
                                name: "Morgan Chen",
                                occupation: "Online Tutor at EduLink Solutions",
                                industry: "Education",
                                skill: "Curriculum Development",
                                skill1: "Video Conferencing",
                                skill2: "Student Engagement",
                                description: "“Shaping minds through the screen. ”"
                            )

                        listPeople(
                            profilePhoto: "CameronP",
                            name: "Cameron Patel",
                            occupation: "IT Consultant at SecureNet Solutions",
                            industry: "IT",
                            skill: "Cybersecurity",
                            skill1: "Cloud Solutions",
                            skill2: "Remote Troubleshooting",
                            description: "“Securing networks from the home front.”"
                        )
                    }
                    else{

                            listPeople(
                                profilePhoto: "CameronP",
                                name: "Cameron Patel",
                                occupation: "IT Consultant at SecureNet Solutions",
                                industry: "IT",
                                skill: "Cybersecurity",
                                skill1: "Cloud Solutions",
                                skill2: "Remote Troubleshooting",
                                description: "“Securing networks from the home front.”"
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


struct SydneyLocalLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        SydneyLocalLibraryView()
    }
}
