//
//  IngredientRow.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/10.
//

import SwiftUI

struct IngredientRow: View {
    let name: String
    let measure: String
    
    var body: some View {
        HStack {
            Text(name)
                .foregroundColor(.secondary)
            
            Spacer()
            
            Text(measure)
                .foregroundColor(.secondary)
        }.padding()
    }
}
