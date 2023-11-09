//
//  Meal.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/8.
//

import Foundation

struct Meals: Codable {
  let meals: [Meal]
}

struct Meal: Codable, Identifiable {
  var id: String {
    return idMeal
  }
  let strMeal: String
  let strMealThumb: String
  let idMeal: String
}

