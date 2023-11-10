//
//  DetailViewModel.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/9.
//

import Foundation

class DetailViewModel: ObservableObject {
    @Published var mealDetail: MealDetail
    
    private var recipeService: RecipeFetching
    
    init(recipeFetching: RecipeFetching, meal: Meal) {
        self.recipeService = recipeFetching
        mealDetail = MealDetail(meal: meal)
        
        Task {
            await getDessertDetail()
            debugPrint("mealDetail.ingredients.count")
            debugPrint(mealDetail.ingredients.count)
        }
    }
    

    func getDessertDetail() async {
        do {
            let mealDetail = try await recipeService.fetchRecipeDetail(id: mealDetail.idMeal)
            self.mealDetail = mealDetail
        } catch {
            debugPrint("Get dessert error")
        }
    }
}
