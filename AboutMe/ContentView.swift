import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack {
            Image("kandinsky")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .padding(.top, 16)
            
            Text("Ivan Iksanov")
                .font(.system(size: 24, weight: .bold))
                .padding(.top, 8)
            
            Text("QA Full Stack")
                .font(.system(size: 18, weight: .semibold))
                .padding(.top, 4)
            
            Spacer().frame(height: 20)
            
            HStack {
                Text("WORK")
                    .font(.system(size: 18, weight: .bold))
                    .padding(.leading, 8)
                Spacer()
            }
            
            Divider()
                .frame(height: 1)
                .background(Color.black)
                .padding(.horizontal, 8)
            
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("2024")
                        .font(.system(size: 16, weight: .bold))
                    Text("SBER - Full Stack QA")
                        .font(.system(size: 16))
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("2023")
                        .font(.system(size: 16, weight: .bold))
                    Text("Yandex.Practicum - Team Lead «QA+»")
                        .font(.system(size: 16))
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("2022")
                        .font(.system(size: 16, weight: .bold))
                    Text("Yandex - Manual QA")
                        .font(.system(size: 16))
                }
            }
            .padding(.top, 8)
            .padding(.horizontal, 8)
            
            Spacer()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    let skillsWithWidth: [(String, CGFloat)] = [("Java", 60), ("Selenium", 100), ("JS", 50), ("Cypress", 90), ("Charles", 90), ("SQL", 60), ("Kibana", 90), ("Jenkins", 90), ("IntelliJ IDEA", 130), ("Android Studio", 160), ("DevTools", 100), ("Postman", 100), ("Insomnia", 100), ("RESTful", 100), ("GIT", 60), ("Jira", 60), ("Agile", 70), ("Confluence", 120)]
                    let range = 0..<skillsWithWidth.count
                    
                    ForEach(range, id: \.self) { index in
                        RoundedRectangle(cornerRadius: 11)
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.gray)
                            .frame(width: skillsWithWidth[index].1, height: 40)
                            .overlay(
                                Text("\(skillsWithWidth[index].0)")
                                    .foregroundColor(colorScheme == .dark ? Color.black : Color.white)
                            )
                    }
                }
            }
            .padding(.top, 20)
            Button(action: {
                if let url = URL(string: "https://t.me/evanovnew") {
                    UIApplication.shared.open(url)
                }
            }) {
                
                Text("Telegram @evanownew")
                    .font(.system(size: 16))
                    .padding(.top, 8)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
            }
        }
    }
}
