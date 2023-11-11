//
//  RecipeService.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/9.
//

import Foundation

protocol RecipeFetching {
    func fetchRecipes(category: String) async throws -> [Meal]
    func fetchRecipeDetail(id: String) async throws -> MealDetail
}

class RecipeService: RecipeFetching {
    
    private var networkManager: NetworkManager
    private let baseUrl = "https://themealdb.com/api/json/v1/1"
    
    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
    
    func fetchRecipes(category: String) async throws -> [Meal] {
        guard let url = URL(string: "\(baseUrl)/filter.php?c=\(category)") else {
            fatalError("Invalid URL")
        }
        return try await withCheckedThrowingContinuation { continuation in
            networkManager.request(fromURL: url, httpMethod: .get) { (result: Result<Meals, Error>) in
                switch result {
                case .success(let response):
                    continuation.resume(returning: response.meals)
                    debugPrint("Success fetch recipes!")
                case .failure(let error):
                    debugPrint(error.localizedDescription)
                    continuation.resume(returning: [])
                }
            }
        }
        
    }
    
    
    func fetchRecipeDetail(id: String) async throws -> MealDetail {
        guard let url = URL(string: "\(baseUrl)/lookup.php?i=\(id)") else {
            fatalError("Invalid URL")
        }
        return try await withCheckedThrowingContinuation { continuation in
            networkManager.request(fromURL: url, httpMethod: .get) { (result: Result<MealDetails, Error>) in
                switch result {
                case .success(let response):
                    if response.meals.count > 0 {
                        continuation.resume(returning: response.meals[0])
                    } else {
                        let customError = NSError(domain: "Network", code: 404, userInfo: [NSLocalizedDescriptionKey: "Recipe not found"])
                        continuation.resume(throwing: customError)
                    }
                    
                    debugPrint("Success fetch recipe detail \(id)!")
                case .failure(let error):
                    debugPrint(error.localizedDescription)
                    continuation.resume(throwing: error)
                }
            }
        }
    }
}
