//
//  UploadPostView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 02/06/23.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @StateObject var viewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    
    var body: some View {
        VStack{
//            Buttons
            HStack{
                Button{
                    tabIndex = 1
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.postImage = nil
 
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                Text("New Post").fontWeight(.semibold)
                Spacer()
                
                Button{
                    print("Upload Post")
                } label: {
                    Text("Upload").fontWeight(.semibold)
                }
            }
            
            HStack{
                
                
                if let image = viewModel.postImage{
                    image.resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120, alignment: .top)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .clipped()
                        .shadow(color: .gray, radius: 10, x: 0, y: 0)
                }
                
                
                TextField("Enter your caption...", text: $caption, axis: .vertical).padding(.leading)
            }.padding(.vertical)
            
            
//            Photo and Caption
            
            
            Spacer()
        }.padding()
            .onAppear{
                imagePickerPresented.toggle()
            }
            .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage )
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView( tabIndex: .constant(0))
    }
}
