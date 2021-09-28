//
//  LoginView.swift
//  exercise2films-swiftui
//
//  Created by David on 28/9/21.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var repeatPassword: String = ""
    
    var body: some View {
        ZStack {
            
            Color("background").edgesIgnoringSafeArea(.all)
            
            Form {
                Section {
                    ZStack {
                        Color.white
                            .cornerRadius(50)
                        Image("logo")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(45)
                            .padding(10)
                    }
                    
                }.listRowBackground(Color("background"))
                Section {
                    TextField("Email", text: $email)
                    TextField("Password", text: $password)
                    TextField("Repeat password", text: $repeatPassword)
                }
                
                Section {
                    Color.white
                        .cornerRadius(50)
                        .overlay(
                            Color("profile-color")
                                .cornerRadius(40)
                                .padding(2)
                                .overlay(
                                    NavigationLink {
                                        MainView()
                                    } label: {
                                        HStack {
                                            Spacer()
                                            Text("Login")
                                                .foregroundColor(.white)
                                            Spacer()
                                        }.padding()
                                    }
                                )
                        )
                }.listRowBackground(Color.clear)
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                
            }.onAppear {
                UITableView.appearance().backgroundColor = .clear
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
