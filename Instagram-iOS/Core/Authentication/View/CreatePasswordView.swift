//
//  CreatePasswordView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 31/05/23.
//

import SwiftUI

struct CreatePasswordView: View {
    @EnvironmentObject var viewModel : RegistrationViewModel
    
    var body: some View {
        VStack(spacing: 5){
            Text("Create your Password")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Your password should have six characters in length.")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            SecureField("Enter Password", text: $viewModel.password)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
            NavigationLink{
                CompleteSignupView()
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
            
            Image("password")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200, alignment: .center)
            
            Spacer()
        }.padding()
    }
}

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
