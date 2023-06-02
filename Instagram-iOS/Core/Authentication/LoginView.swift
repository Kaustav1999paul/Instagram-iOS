//
//  LoginView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 31/05/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
                VStack{
                    Text("Sign in to your\nAccount.").fontWeight(.heavy)
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .padding(.top, 60)
                    
                    Text("The place where we all connect with eachother.")
                        .font(.footnote)
                        .padding(.bottom)
                        .padding(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
//                    Login Form
                    Rectangle().ignoresSafeArea()
                        .overlay(
                            VStack{
                                TextField("Enter Email", text: $email)
                                    .autocapitalization(.none)
                                    .modifier(IGTextFieldModifier())
                                
                                SecureField("Enter Password", text: $password)
                                    .font(.subheadline)
                                    .modifier(IGTextFieldModifier())
                                
                                Button{
                                    print("Forgot password!!")
                                }label: {
                                    Text("Forgot Password?")
                                        .font(.footnote)
                                        .fontWeight(.bold)
                                        .foregroundColor(.blue)
                                    
                                }.frame(maxWidth: .infinity, alignment: .trailing)
                                    .padding(.trailing, 28)
                                    .padding(.vertical, 10)
                                
                                
                                Button{
                                    print("LOGIN")
                                }label: {
                                    Text("Login")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .frame(width: 360, height: 44)
                                        .background(Color.blue)
                                        .cornerRadius(10)
                                }
                                
                                Spacer()
                                
                                Divider()
                                
                                NavigationLink{
                                    AddEmailView()
                                }label: {
                                    Text("Create a new Account")
                                        .font(.footnote)
                                        .fontWeight(.bold)
                                        .foregroundColor(.blue)
                                        .padding()

                                }
                            }.padding(.top,50)
                        )
                    
                }.foregroundColor(.white).background(.blue)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
