//
//  HomeViewModel.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/8.
//

import Foundation

class HomeViewModel: ObservableObject {
  @Published var meals: [Meal] = []
  
  init() {
    getDessert()
  }
  
  
  func getDessert()  {
    guard let url = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert") else {
      fatalError("Invalid Url")
      // @TODO: Set error status
    }
    
    let networkManager = NetworkManager()
    networkManager.request(fromURL: url, httpMethod: .get) { [weak self] (result: Result<Meals, Error>) in
      guard let self = self else {
        // @TODO: Set error status
        return
      }
      switch result {
      case .success(let response):
        self.meals = response.meals
        debugPrint("Success!")
      case .failure(let error):
        debugPrint(error.localizedDescription)
        // @TODO: Set error status
      }
    }
    
  }
}
