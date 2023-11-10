//
//  DetailViewModel.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/9.
//

import Foundation

class DetailViewModel: ObservableObject {
    @Published var meals: [MealDetail] = []
    
    private var recipeService: RecipeFetching
    
    init(recipeFetching: RecipeFetching) {
        self.recipeService = recipeFetching
//        Task {
//            await getDesserts()
//        }
    }

}
