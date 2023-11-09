//
//  RecipeService.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/9.
//

import Foundation

protocol RecipeFetching {
  func fetchRecipes(category: String) async throws -> [Meal]
}

class RecipeService: RecipeFetching {
  private var networkManager: NetworkManager
  private let baseUrl = "https://themealdb.com/api/json/v1/1/filter.php"
  
  init(networkManager: NetworkManager) {
    self.networkManager = networkManager
  }
  
  func fetchRecipes(category: String) async throws -> [Meal] {
    guard let url = URL(string: "\(baseUrl)?c=\(category)") else {
      fatalError("Invalid URL")
      // @TODO: Set error status
    }
    return try await withCheckedThrowingContinuation { continuation in
      networkManager.request(fromURL: url, httpMethod: .get) { (result: Result<Meals, Error>) in
        switch result {
        case .success(let response):
          continuation.resume(returning: response.meals)
          debugPrint("Success!")
        case .failure(let error):
          debugPrint(error.localizedDescription)
          continuation.resume(returning: [])
          // @TODO: Set error status
        }
      }
    }
    
  }
  
}
