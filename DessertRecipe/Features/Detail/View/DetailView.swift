//
//  DetailView.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/9.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var viewModel: DetailViewModel
    
    init(meal: Meal) {
        viewModel = DetailViewModel(recipeFetching: RecipeService(networkManager: NetworkManager()), meal: meal)
    }
    
    var body: some View {
        if viewModel.isLoading {
            LoadingView()
        } else if viewModel.isError {
            ErrorView()
        } else {
            ScrollView {
                HeaderView(imageURL: viewModel.mealDetail.strMealThumb)
                
                InformationView(category: viewModel.mealDetail.strCategory,
                                mealID: viewModel.mealDetail.idMeal,
                                mealName: viewModel.mealDetail.strMeal)
                .padding(.top, 32)
                
                SectionView(title: "Ingredients", content: {
                    ForEach(viewModel.mealDetail.ingredients, id: \.self) { ingredient in
                        IngredientRow(name: ingredient.element, measure: ingredient.measure)
                    }
                })
                
                SectionView(title: "Instructions", content: {
                    Text(viewModel.mealDetail.strInstructions ?? "")
                        .font(.body)
                        .padding(.top, 4)
                })
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

#Preview {
    DetailView(meal: Meal(strMeal: "Apple Pie", strMealThumb: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic01.nyt.com%2Fimages%2F2021%2F11%2F17%2Fdining%2F12BestPie3%2F12BestPie3-articleLarge-v2.jpg%3Fw%3D1280%26q%3D75&tbnid=sGZISq5E1LSD3M&vet=12ahUKEwi0wajjqriCAxX_DWIAHQJ8CUYQMygNegUIARCdAQ..i&imgrefurl=https%3A%2F%2Fcooking.nytimes.com%2Frecipes%2F1022727-classic-apple-pie&docid=ZzbmD6640l_83M&w=600&h=400&q=apple%20pie&ved=2ahUKEwi0wajjqriCAxX_DWIAHQJ8CUYQMygNegUIARCdAQ", idMeal: "1111"))
}
