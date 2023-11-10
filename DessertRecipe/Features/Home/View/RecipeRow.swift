//
//  RecipeRow.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/10.
//

import SwiftUI

struct RecipeRow: View {
    var meal: Meal
    private let aspect: CGFloat = 1.5
    
    var body: some View {
        ZStack(alignment: .leading) {
            NavigationLink(destination: DetailView(meal: meal)) {
                EmptyView().opacity(0)
            }
            
            VStack {
                AsyncImage(url: URL(string: meal.strMealThumb)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .aspectRatio(aspect, contentMode: .fill)
                
                Text(meal.strMeal)
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
            )
            .padding([.top, .horizontal])
        }
    }
}

