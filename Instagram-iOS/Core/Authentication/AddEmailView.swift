//
//  AddEmailView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 31/05/23.
//

import SwiftUI

struct AddEmailView: View {
    
    @State private var email = ""
    
    var body: some View {
        VStack(spacing: 5){
            Text("Add your Email")
                .font(.title)
                .fontWeight(.bold)
            
            Text("This email will be used for creating your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            TextField("Enter Email", text: $email)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
            NavigationLink{
                CreateUsernameView()
            }label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 320, height: 44)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.top)
            }
            
            Spacer()
            
            Image("life")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200, alignment: .center)
                .padding(.leading, 50)
            
            Spacer()
        }.padding()
    }
}

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
