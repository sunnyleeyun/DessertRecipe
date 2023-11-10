//
//  HomeView.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/8.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel(recipeFetching: RecipeService(networkManager: NetworkManager()))
    
    var body: some View {
        NavigationView {
            RecipeListView(viewModel: viewModel)
                .navigationTitle("Desserts")
        }.accentColor(.black)
    }
}

#Preview {
    HomeView()
}
