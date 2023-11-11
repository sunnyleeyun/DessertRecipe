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
            
            NavigationLink(destination: NavigationLazyView(DetailView(meal: meal)).toolbarRole(.editor)) {
                EmptyView()
            }.opacity(0)
            
            VStack {
                AsyncImage(url: URL(string: meal.strMealThumb)) { image in
                    image.resizable().aspectRatio(aspect, contentMode: .fill)
                } placeholder: {
                    ProgressView()
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("\(meal.strMeal)")
                            .font(.headline)
                            .foregroundColor(.secondary)
                    }
                    .layoutPriority(100)
                    Spacer()
                }
                .padding()
                
            }
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.sRGB, red: 0.5, green: 0.5, blue: 0.5, opacity: 0.5), lineWidth: 1)
                    .shadow(color: .gray, radius: 10, x: 0, y: 2)
            )
            .padding([.top, .horizontal])
        }
    }
}

