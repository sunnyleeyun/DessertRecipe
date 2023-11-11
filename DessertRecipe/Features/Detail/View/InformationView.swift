//
//  InformationView.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/10.
//

import SwiftUI

struct InformationView: View {
    let category: String?
    let mealID: String
    let mealName: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(category ?? "")
                    .foregroundColor(.secondary)
                    .font(.caption)
                
                Spacer()
                
                Text("#\(mealID)")
                    .foregroundColor(.secondary)
                    .font(.caption)
            }
            
            Text(mealName)
                .font(.title).padding(.top, 16)
        }
        .padding()
    }
}
