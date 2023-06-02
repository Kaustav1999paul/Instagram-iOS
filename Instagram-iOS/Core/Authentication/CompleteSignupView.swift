//
//  CompleteSignupView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 31/05/23.
//

import SwiftUI

struct CompleteSignupView: View {
    var body: some View {
        VStack(spacing: 5){
            
            Spacer()
            
            Text("Welcome to Social Media,")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Kaustav Paul")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Click on the continue button to get started. Welcome to the world of socialmedia")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.bottom)
                .padding(.horizontal, 40)
            
            Button{
                print("Complete Sign up")
            }label: {
                Text("Create Account")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 320, height: 44)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.top)
            }
            Spacer()
        }.padding()
    }
}

struct CompleteSignupView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignupView()
    }
}
