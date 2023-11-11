//
//  HeaderView.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/10.
//

import SwiftUI

struct HeaderView: View {
    let imageURL: String
    
    var body: some View {
        AsyncImage(url: URL(string: imageURL)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
        } placeholder: {
            ProgressView()
        }
    }
}
