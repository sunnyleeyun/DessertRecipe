//
//  Meal.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/8.
//

import Foundation

struct Meals: Codable, Identifiable {
  let id = UUID()
  let meals: [Meal]
}

struct Meal: Codable, Identifiable {
  let id = UUID()
  let strMeal: String
  let strMealThumb: String
  let idMeal: String
}

