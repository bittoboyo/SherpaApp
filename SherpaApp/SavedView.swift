import SwiftUI
                    
struct SavedView: View {
    @State var isUnsavePopupVisible = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    VStack {
                        Text("Saved People")
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(maxWidth: 360, alignment: .leading)
                            .padding(.top, 20)
                        Divider()
                            .padding(.bottom, 10)
                        
                        Text("Recently Added")
                            .font(.title3)
                            .frame(maxWidth: 360, alignment: .leading)
                        
                        NavigationLink(destination: JohnProfileView()) {
                            savedPerson(
                                profilePhoto: "John",
                                name: "John Smith",
                                jobTitle: "Interaction Designer",
                                company: "Apple",
                                industry: "IT"
                            )
                        }
                        NavigationLink(destination: ElaineProfileView()){
                            savedPerson(
                                profilePhoto: "ElaineH",
                                name: "Elaine Houston",
                                jobTitle: "Data Scientist",
                                company: "Llamazon",
                                industry: "IT"
                            )
                        }
                        NavigationLink(destination: IsaiahProfileView()){
                            savedPerson(
                                profilePhoto: "IsaiahJ",
                                name: "Isaiah Jones",
                                jobTitle: "Front-End Web Developer",
                                company: "XYZ",
                                industry: "IT"
                            )
                        }
                        NavigationLink(destination: JasonProfileView()){
                            savedPerson(
                                profilePhoto: "JalenG",
                                name: "Jason Fire",
                                jobTitle: "Creative Storyteller",
                                company: "Fixar",
                                industry: "IT"
                            )
                        }
                        NavigationLink(destination: ZiProfileView()){
                            savedPerson(
                                profilePhoto: "ZiS",
                                name: "Zi Stark",
                                jobTitle: "Tech Consultant",
                                company: "Golden Bummi",
                                industry: "IT"
                            )
                        }
                        NavigationLink(destination: MarioProfileView()){
                            savedPerson(
                                profilePhoto: "MarioB",
                                name: "Mario Bird",
                                jobTitle: "Business Dev Manager",
                                company: "Apple",
                                industry: "IT"
                            )
                        }
                        NavigationLink(destination: MaryProfileView()){
                            savedPerson(
                                profilePhoto: "MaryP",
                                name: "Mary Pops",
                                jobTitle: "Product Manager",
                                company: "Sherpa",
                                industry: "IT"
                            )
                        }
                    }
    //                .background(
    //                    Color.black.opacity(0.3).edgesIgnoringSafeArea(.all)
    //                    .onTapGesture {
    //                        isUnsavePopupVisible = false
    //                    }
    //                )
//                    if isUnsavePopupVisible {
//                        UnsavePopup {
//                            isUnsavePopupVisible.toggle()
//                            print("User Unsaved")
//                            
//                            //SharedData.Alver.toggle()
//                            
//                        } onCancel: {
//                            isUnsavePopupVisible.toggle()
//                            print("Unsave Cancelled")
//                        }
//                    }
                }
            }
        }
        
    }
}

func savedPerson (profilePhoto: String, name: String, jobTitle: String, company: String, industry: String) -> some View {
    //@Binding var isToggled: Bool
    @State var isUnsavePopupVisible = true
    
    
    return ZStack {
        RoundedRectangle(cornerRadius: 20)
            .stroke(.gray, lineWidth: 1)
            .fill(Color.white)
            .frame(width: 360, height: 110)
        HStack {
                Image(profilePhoto)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80)
                    .clipShape(Circle())
                    .offset(x: 5)
            VStack {
                Text(name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: 10)
                Text(jobTitle + " at " + company)
                    .font(.subheadline)
                    .padding(.bottom, 1)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: 10)
                Text(industry)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .background(.blue)
                    .cornerRadius(5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: 10)
            }
            Spacer()
//            Button {
//                isUnsavePopupVisible.toggle()
//                //isToggled.toggle()
//            } label: {
//                Image(systemName: "bookmark.fill")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 20)
//                    .offset(x: -5, y: -25)
//            }
        }
        .padding(.horizontal,30)
    }
}

//struct UnsavePopup: View {
//    var onOK: () -> Void
//    var onCancel: () -> Void
//
//    var body: some View {
//        VStack {
//            RoundedRectangle(cornerRadius: 20)
//                .fill(Color.white)
//                .frame(width: 180, height: 120)
//                .shadow(radius: 10, x: 5, y: 5)
//                .overlay(
//                    VStack {
//                        Text("Unsave profile?")
//                            .font(.headline)
//                            .padding()
//                        HStack {
//                            Button("OK  ") {
//                                onOK()
//                                //isUnsavePopupVisible.toggle()
//
//                            }
//                            .foregroundColor(.blue)
//                            .cornerRadius(10)
//                            Button("  Cancel") {
//                                onCancel()
//                            }
//                            .foregroundColor(.red)
//                        }
//                        .padding(.bottom, 10)
//                    }
//                )
//                .position(x: 200, y: 360)
//        }
//    }
//}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
    }
}
