//
//  EditProfileView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 04/06/23.
//

import SwiftUI
import _PhotosUI_SwiftUI

struct EditProfileView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var selectedImage : PhotosPickerItem?
    @State private var fullname = ""
    @State private var bio = ""
    
    var body: some View {
        VStack{
            HStack{
                Button{
                    dismiss()
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                Text("Edit Profile").fontWeight(.bold).font(.title3)
                Spacer()
                Button{
                    print("Profile Updated")
                } label: {
                    Text("Done").fontWeight(.bold)
                }
            }.padding()
            
            Divider()
            
            
            PhotosPicker(selection: $selectedImage){
                Image("pic3")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120, alignment: .top)
                    .clipShape(Circle())
                    .clipped()
                    .shadow(color: .gray, radius: 20, x: 0, y: 0)
                    .padding(.top, 40)
            }
            
                        
            VStack{
                EditProfileRowView(title: "Name", placeholder: "Enter your name", text: $fullname)
                EditProfileRowView(title: "Bio", placeholder: "Enter your Bio", text: $bio).padding(.top)
            }.padding(.top, 60)
            
            
            
            Spacer()
        }
    }
}

struct EditProfileRowView : View{
    let title : String
    let placeholder : String
    @Binding var text : String
     
    var body : some View{
        HStack{
            Text(title).frame(width: 50)
                .padding(.trailing)
            
            VStack{
                TextField(placeholder, text: $text)
                Divider()
            }
        }.font(.subheadline)
            .frame(height: 36)
            .padding(.horizontal)
    }
    
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
