//
//  HomeViewModel.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/8.
//

import Foundation

@MainActor class HomeViewModel: ObservableObject {
    
    @Published var meals: [Meal] = []
    
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
        } catch {
            debugPrint("Get dessert error")
        }
    }
    
    private func sortedMeal(_ meals: [Meal]) -> [Meal] {
        return meals.sorted(by: { m1, m2 in
            m1.strMeal < m2.strMeal
        })
    }
    
}
