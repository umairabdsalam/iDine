//
//  ItemDetail.swift
//  iDine
//
//  Created by Umair Salam on 4/1/24.
//

import SwiftUI

struct ItemDetail: View {
    
    let item: MenuItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing)
            {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo by\(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ItemDetail(item: MenuItem.example)
    }
    
}
