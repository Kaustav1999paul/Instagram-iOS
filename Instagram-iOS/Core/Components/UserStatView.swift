//
//  UserStatView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 30/05/23.
//

import SwiftUI

struct UserStatView: View {
    
    let value : String
    let title : String
    
    var body: some View {
        VStack{
            Text(value)
            Text(title).foregroundColor(Color.gray)
                .font(.system(size: 15))
        }
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView(value: "3", title: "title")
    }
}
