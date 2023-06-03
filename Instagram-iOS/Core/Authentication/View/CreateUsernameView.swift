//
//  CreateUsernameView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 31/05/23.
//

import SwiftUI

struct CreateUsernameView: View {
    @EnvironmentObject var viewModel : RegistrationViewModel
    
    var body: some View {
        VStack(spacing: 5){
            Text("Choose your Username")
                .font(.title)
                .fontWeight(.bold)
            
            Text("This username will be used for creating your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            TextField("Enter Username", text: $viewModel.username)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
            NavigationLink{
                CreatePasswordView()
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
            
            Image("life2")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200, alignment: .center)
                .padding(.leading, 20)
            
            Spacer()
        }.padding()
    }
}

struct CreateUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUsernameView()
    }
}
