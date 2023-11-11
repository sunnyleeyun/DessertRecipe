//
//  HomeViewModel.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/8.
//

import Foundation

@MainActor class HomeViewModel: ObservableObject {
    
    @Published var meals: [Meal] = []
    @Published var isLoading: Bool = true
    @Published var isError: Bool = false
    
    private var recipeService: RecipeFetching
    
    init(recipeFetching: RecipeFetching) {
        self.recipeService = recipeFetching
        Task {
            await getDesserts()
        }
    }
    
    func getDesserts() async {
        do {
            let meals = try await recipeService.fetchRecipes(category: "Dessert")
            self.meals = sortedMeal(meals)
            self.isLoading = false
        } catch {
            self.isLoading = false
            self.isError = true
        }
    }
    
    private func sortedMeal(_ meals: [Meal]) -> [Meal] {
        return meals.sorted(by: { m1, m2 in
            m1.strMeal < m2.strMeal
        })
    }
    
}
