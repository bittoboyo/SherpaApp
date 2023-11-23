import SwiftUI

struct HotelView: View {
    @State private var favoriteColor = "All"
       var colors = ["All", "Industry"]
    var body: some View {
    NavigationView{
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
                        
                        listPeople(
                            profilePhoto: "BobLe",
                            name: "Marell Bito",
                            occupation: "Serious Game Researcher at UTS",
                            industry: "IT",
                            skill: "Unity",
                            skill1: "C#",
                            skill2: "Research",
                            description: "“Marell’s my name, and gaming is my game!”"
                        )
                        listPeople(
                            profilePhoto: "EvaM",
                            name: "Angela Coggin",
                            occupation: "Funding Officer at USYD",
                            industry: "Education",
                            skill: "Funding",
                            skill1: "Proj Mgt",
                            skill2: "PR",
                            description: "“Eager to discuss potential collaborations and funding opportunities”"
                        )
                            listPeople(
                                profilePhoto: "John",
                                name: "Sophia Nguyen",
                                occupation: "Interior Designer at Elle Decor",
                                industry: "Design",
                                skill: "Color Theory",
                                skill1: "Furniture Design",
                                skill2: "Space Planning",
                                description: "“Curating spaces that tell stories.”"
                            )

                        listPeople(
                            profilePhoto: "MaryP",
                            name: "Samuel Turner",
                            occupation: "Senior Architect at X Studio",
                            industry: "Architecture",
                            skill: "AutoCAD",
                            skill1: "3D Modeling",
                            skill2: "Sustainable Design",
                            description: "“Building dreams into structures. My drafting board is a landscape of blueprints”"
                        )
                    }
                    else{

                            listPeople(
                                profilePhoto: "BobLe",
                                name: "Marell Bito",
                                occupation: "Serious Game Researcher at UTS",
                                industry: "IT",
                                skill: "Unity",
                                skill1: "C#",
                                skill2: "Research",
                                description: "“Marell’s my name, and gaming is my game!”"
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
