//
//  ProfileView.swift
//  exercise2films-swiftui
//
//  Created by David on 24/9/21.
//

import SwiftUI

struct ProfileView: View {
    
    let itemList: [String: String] = [
        "1.Category" : "square.grid.2x2",
        "2.Language" : "bubble.left.and.bubble.right",
        "3.Setting" : "gearshape",
        "4.Terms of Services" : "magazine",
        "5.Privacy Policy" : "menucard",
        "6.Contact us" : "phone.circle",
        "7.FAQ" : "quote.bubble"
    ]
    
    let nickname: String = "Gloria Mckinney"
    let loyaltyTime: String = "6 meses"
    
    var body: some View {
        
        List {
            
            Section {
                CardProfileView(nickname: nickname, loyaltyTime: loyaltyTime)
                    .listRowBackground(Color("profile-color"))
            }
            
            Section {
                CustomProfileListView(itemList: itemList)
                    .listRowBackground(Color("profile-color"))
            }
        }.foregroundColor(.white)
            .onAppear {
                UITableView.appearance().backgroundColor = .clear
                UITableView.appearance().separatorColor = UIColor(named: "background")
            }
            .modifier(BackgroundModifier())
            
    }
}

struct CardProfileView: View {
    
    let nickname: String
    let loyaltyTime: String
    
    var body: some View {
        HStack {
            ZStack {
                Color.white
                    .frame(width: 64, height: 64)
                    .cornerRadius(32)
                Image("example-collection")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                
                    .cornerRadius(30.0)
            }
            VStack(alignment: .leading) {
                Text(nickname)
                    .bold()
                Color.white
                    .overlay(
                        Color("button-profile-color")
                            .overlay(
                                Text(loyaltyTime)
                                    .font(.system(size: 15))
                                    .bold()
                            ).frame(width: 88, height: 28)
                            .cornerRadius(20)
                    ).frame(width: 90, height: 30)
                    .cornerRadius(20)
            }
            Spacer()
        }.padding(.vertical)
    }
}

struct CustomProfileListView: View {
    
    let itemList: [String: String]
    
    var body: some View {
        ForEach(itemList.keys.sorted(), id: \.self) { key in
            HStack {
                Spacer()
                Image(systemName: "chevron.right")
            }.overlay(
                NavigationLink {
                    
                    EmptyView()
                        .modifier(BackgroundModifier())
                    
                } label: {
                    HStack {
                        Image(systemName: itemList[key]!)
                            .font(.system(size: 25))
                        Text(key.components(separatedBy: ".") [1])
                        Spacer()
                        
                    }
                }
            )
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
