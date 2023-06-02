//
//  IGTextFieldModifier.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 31/05/23.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .foregroundColor(.black)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 20)
    }
}
