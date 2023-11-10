//
//  RecipeListView.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/10.
//

import SwiftUI

struct RecipeListView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        List(viewModel.meals) { meal in
            RecipeRow(meal: meal)
                .listRowSeparator(.hidden)
        }
        .listStyle(PlainListStyle())
        .background(Color.clear)
    }
}

