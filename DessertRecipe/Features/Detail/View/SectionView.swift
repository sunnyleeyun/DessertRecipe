//
//  SectionView.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/10.
//

import SwiftUI

struct SectionView<Content: View>: View {
    let title: String
    let content: () -> Content
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            
            content()
        }.padding()
    }
}
