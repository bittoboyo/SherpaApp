import SwiftUI

struct EpicCoffeeView: View {
    @State private var favoriteColor = "All"
       var colors = ["All", "Industry"]
    var body: some View {
    NavigationView{
        VStack {
            HStack {
                VStack{
                    Text("Epic Coffee")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: 360, alignment: .leading)
                        .padding(.top, 20)
                    HStack{
                        Image(systemName: "figure.walk")
                            .font(.body)
                        Text("4 mins walk")
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
                            profilePhoto: "SaraF",
                            name: "Sara Florea",
                            occupation: "Political Consultant",
                            industry: "Consultancy",
                            skill: "Leadership",
                            skill1: "Research",
                            skill2: "Bloomberg",
                            description: "“Consultant in a different timezone, studying Mathematics and Quantitative Finance, searching for problems to solve in every one.”"
                        )
                        listPeople(
                            profilePhoto: "XuanZ",
                            name: "Xuan Zhang",
                            occupation: "UI/UX Designer at UTS",
                            industry: "IT",
                            skill: "StoryTelling",
                            skill1: "Research",
                            skill2: "Figma",
                            description: "“Love talking to people! Passionate in enhacing people's experience in daily basis.”"
                        )
                
                            listPeople(
                                profilePhoto: "ChrisT",
                                name: "Chris Taylor",
                                occupation: "High School Teacher at City High School.",
                                industry: "Education",
                                skill: "Curriculum Development",
                                skill1: "Teaching",
                                skill2: "Educational Technology",
                                description: "“Inspiring students to love learning and embrace new educational technologies.”"
                            )
                        
                       
                        listPeople(
                            profilePhoto: "OliviaZ",
                            name: "Olivia Zhang",
                            occupation: "Product Manager at Sherpa",
                            industry: "Fashion",
                            skill: "Design",
                            skill1: "Pattern",
                            skill2: "Photoshop",
                            description: "“Bringing creativity and style to the world of fashion through innovative designs.”"
                            
                        
                        )
                        listPeople(
                            profilePhoto: "JasmineP",
                            name: "Jasmine Patel",
                            occupation: "Software Developer at Tech Solutions Inc.",
                            industry: "IT",
                            skill: "Database",
                            skill1: "Programming",
                            skill2: "Cybersecurity",
                            description: "“Passionate about creating secure and efficient software solutions.”"
                        )
                        listPeople(
                            profilePhoto: "LenaK",
                            name: "Lena Kim",
                            occupation: "Software Developer at Tech Solutions Inc.",
                            industry: "IT",
                            skill: "Cloud",
                            skill1: "DevOps",
                            skill2: "Automation",
                            description: "“Specializing in cloud technologies and streamlining development processes.”"
                        )
                    }
                    else{
                            listPeople(
                                profilePhoto: "JasmineP",
                                name: "Jasmine Patel",
                                occupation: "Software Developer at Tech Solutions Inc.",
                                industry: "IT",
                                skill: "Database",
                                skill1: "Programming",
                                skill2: "Cybersecurity",
                                description: "“Passionate about creating secure and efficient software solutions.”"
                            )
                        .foregroundStyle(.black)
                        listPeople(
                            profilePhoto: "LenaK",
                            name: "Lena Kim",
                            occupation: "Software Developer at Tech Solutions Inc.",
                            industry: "IT",
                            skill: "Cloud",
                            skill1: "DevOps",
                            skill2: "Automation",
                            description: "“Specializing in cloud technologies and streamlining development processes.”"
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

struct EpicCoffeeView_Previews: PreviewProvider {
    static var previews: some View {
        EpicCoffeeView()
    }
}
