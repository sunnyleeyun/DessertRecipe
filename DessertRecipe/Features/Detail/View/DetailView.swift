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
    
    private let aspect = 1.5
    
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                AsyncImage(url: URL(string: viewModel.mealDetail.strMealThumb)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 300)
                } placeholder: {
                    ProgressView()
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(viewModel.mealDetail.strCategory ?? "")
                            .foregroundColor(.secondary)
                            .font(.caption)
                        
                        Spacer()
                        
                        Text("#\(viewModel.mealDetail.idMeal)")
                            .foregroundColor(.secondary)
                            .font(.caption)
                    }
                    
                    Text(viewModel.mealDetail.strMeal)
                        .font(.title).padding(.top, 16)
                    
                    
                }.padding().padding(.top, 32)
                
                Text("Ingredients")
                    .font(.headline).padding().padding(.top, 16)
                
                ForEach(viewModel.mealDetail.ingredients, id: \.self) { ingredient in
                    HStack {
                        Text(ingredient.element)
                            .foregroundColor(.secondary)
                            .padding().padding(.leading, 12)
                        
                        Spacer()
                        
                        Text(ingredient.measure)
                            .foregroundColor(.secondary)
                            .padding().padding(.trailing, 36)
                    }
                }
                
                Text("Instructions")
                    .font(.headline).padding().padding(.top, 16)

                Text(viewModel.mealDetail.strInstructions ?? "")
                    .font(.body).padding().padding(.top, 4)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    DetailView(meal: Meal(strMeal: "Apple Pie", strMealThumb: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic01.nyt.com%2Fimages%2F2021%2F11%2F17%2Fdining%2F12BestPie3%2F12BestPie3-articleLarge-v2.jpg%3Fw%3D1280%26q%3D75&tbnid=sGZISq5E1LSD3M&vet=12ahUKEwi0wajjqriCAxX_DWIAHQJ8CUYQMygNegUIARCdAQ..i&imgrefurl=https%3A%2F%2Fcooking.nytimes.com%2Frecipes%2F1022727-classic-apple-pie&docid=ZzbmD6640l_83M&w=600&h=400&q=apple%20pie&ved=2ahUKEwi0wajjqriCAxX_DWIAHQJ8CUYQMygNegUIARCdAQ", idMeal: "1111"))
}
