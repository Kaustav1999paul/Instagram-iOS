//
//  SearchView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 31/05/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @StateObject var viewModel = SearchViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack{
                    ForEach(viewModel.users){user in
                        NavigationLink(value: user){
                            HStack {
                                Image(systemName: "person.circle")
                                    .resizable()
                                    .foregroundColor(Color.gray)
                                    .scaledToFill()
                                    .clipShape(Circle())
                                .frame(width: 40, height: 40)
                                
                                VStack{
                                    Text(user.username ).font(.title3)
                                        .fontWeight(.bold).frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    Text(user.fullName ?? "").font(.footnote).frame(maxWidth: .infinity, alignment: .leading)
                                }.frame(maxWidth: .infinity, alignment: .leading)
                            }.padding(.horizontal)
                                .padding(.top)
                                .foregroundColor(Color.black)
                        }
                        
                    }.searchable(text: $searchText, prompt: "Search...")
                }
            }
            .navigationDestination(for: User.self, destination: {user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
