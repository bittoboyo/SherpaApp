import SwiftUI


class SharedData: ObservableObject {
    @Published var Alver = false
}
                    
                    
struct SavedView: View {
    @State private var isUnsavePopupVisible = false
    //@EnvironmentObject private var isUnsavePopupVisible: Bool

    var body: some View {
        ScrollView {
            ZStack {
                VStack {
                    HStack {
                        Text("Saved People")
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
//                .background(
//                    Color.black.opacity(0.3).edgesIgnoringSafeArea(.all)
//                    .onTapGesture {
//                        isUnsavePopupVisible = false
//                    }
//                )
                if isUnsavePopupVisible {
                    UnsavePopup {
                        isUnsavePopupVisible.toggle()
                        print("User Unsaved")
                        
                        //SharedData.Alver.toggle()
                        
                    } onCancel: {
                        isUnsavePopupVisible.toggle()
                        print("Unsave Cancelled")
                    }
                }
                
                //if toggleState{ Text("Changed")}
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
            .frame(width: 370, height: 150)
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
                    .frame(maxWidth: 200, alignment: .leading)
                Text(jobTitle + "\n" + "at " + company)
                    .font(.subheadline)
                    .frame(maxWidth: 200, alignment: .leading)
                    .padding(.bottom, 5)
                Text(industry)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .background(.blue)
                    .cornerRadius(5)
                    .frame(maxWidth: 200, alignment: .leading)
            }
            Button {
                isUnsavePopupVisible.toggle()
                //isToggled.toggle()
            } label: {
                Image(systemName: "bookmark.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
                    .offset(x: -5, y: -25)
            }
        }
    }
}

struct UnsavePopup: View {
    var onOK: () -> Void
    var onCancel: () -> Void

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(width: 180, height: 120)
                .shadow(radius: 10, x: 5, y: 5)
                .overlay(
                    VStack {
                        Text("Unsave profile?")
                            .font(.headline)
                            .padding()
                        HStack {
                            Button("OK  ") {
                                onOK()
                                //isUnsavePopupVisible.toggle()

                            }
                            .foregroundColor(.blue)
                            .cornerRadius(10)
                            Button("  Cancel") {
                                onCancel()
                            }
                            .foregroundColor(.red)
                        }
                        .padding(.bottom, 10)
                    }
                )
                .position(x: 200, y: 360)
        }
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
    }
}
