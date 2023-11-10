//
//  Recipe.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/8.
//

import Foundation

// @TODO: add design rationale of merging and splitting the models
struct MealDetails: Codable {
    let meals: [MealDetail]
}

struct MealDetail: Identifiable, Codable {
    var id: String {
        return idMeal
    }
    var idMeal: String
    var strMeal: String
    var strMealThumb: String
    
    var strDrinkAlternate: String? = nil
    var strCategory: String? = nil
    var strArea: String? = nil
    var strInstructions: String? = nil
    var strTags: String? = nil
    var strYoutube: String? = nil
    var strIngredient1: String? = nil
    var strIngredient2: String? = nil
    var strIngredient3: String? = nil
    var strIngredient4: String? = nil
    var strIngredient5: String? = nil
    var strIngredient6: String? = nil
    var strIngredient7: String? = nil
    var strIngredient8: String? = nil
    var strIngredient9: String? = nil
    var strIngredient10: String? = nil
    var strIngredient11: String? = nil
    var strIngredient12: String? = nil
    var strIngredient13: String? = nil
    var strIngredient14: String? = nil
    var strIngredient15: String? = nil
    var strIngredient16: String? = nil
    var strIngredient17: String? = nil
    var strIngredient18: String? = nil
    var strIngredient19: String? = nil
    var strIngredient20: String? = nil
    var strMeasure1: String? = nil
    var strMeasure2: String? = nil
    var strMeasure3: String? = nil
    var strMeasure4: String? = nil
    var strMeasure5: String? = nil
    var strMeasure6: String? = nil
    var strMeasure7: String? = nil
    var strMeasure8: String? = nil
    var strMeasure9: String? = nil
    var strMeasure10: String? = nil
    var strMeasure11: String? = nil
    var strMeasure12: String? = nil
    var strMeasure13: String? = nil
    var strMeasure14: String? = nil
    var strMeasure15: String? = nil
    var strMeasure16: String? = nil
    var strMeasure17: String? = nil
    var strMeasure18: String? = nil
    var strMeasure19: String? = nil
    var strMeasure20: String? = nil
    var strSource: String? = nil
    var strImageSource: String? = nil
    var strCreativeCommonsConfirmed: String? = nil
    var dateModified: String? = nil
    
    var ingredients: [Ingredient] {
        var ingredients: [Ingredient] = []
        if let ing1 = strIngredient1, let mea1 = strMeasure1, !ing1.isEmpty, !mea1.isEmpty {
            ingredients.append(Ingredient(ingredient: ing1, measure: mea1))
        }
        if let ing2 = strIngredient2, let mea2 = strMeasure2, !ing2.isEmpty, !mea2.isEmpty {
            ingredients.append(Ingredient(ingredient: ing2, measure: mea2))
        }
        if let ing3 = strIngredient3, let mea3 = strMeasure3, !ing3.isEmpty, !mea3.isEmpty {
            ingredients.append(Ingredient(ingredient: ing3, measure: mea3))
        }
        if let ing4 = strIngredient4, let mea4 = strMeasure4, !ing4.isEmpty, !mea4.isEmpty {
            ingredients.append(Ingredient(ingredient: ing4, measure: mea4))
        }
        if let ing5 = strIngredient5, let mea5 = strMeasure5, !ing5.isEmpty, !mea5.isEmpty {
            ingredients.append(Ingredient(ingredient: ing5, measure: mea5))
        }
        if let ing6 = strIngredient6, let mea6 = strMeasure6, !ing6.isEmpty, !mea6.isEmpty {
            ingredients.append(Ingredient(ingredient: ing6, measure: mea6))
        }
        if let ing7 = strIngredient7, let mea7 = strMeasure7, !ing7.isEmpty, !mea7.isEmpty {
            ingredients.append(Ingredient(ingredient: ing7, measure: mea7))
        }
        if let ing8 = strIngredient8, let mea8 = strMeasure8, !ing8.isEmpty, !mea8.isEmpty {
            ingredients.append(Ingredient(ingredient: ing8, measure: mea8))
        }
        if let ing9 = strIngredient9, let mea9 = strMeasure9, !ing9.isEmpty, !mea9.isEmpty {
            ingredients.append(Ingredient(ingredient: ing9, measure: mea9))
        }
        if let ing10 = strIngredient10, let mea10 = strMeasure10, !ing10.isEmpty, !mea10.isEmpty {
            ingredients.append(Ingredient(ingredient: ing10, measure: mea10))
        }
        return ingredients
    }
    
    init(meal: Meal) {
        idMeal = meal.idMeal
        strMeal = meal.strMeal
        strMealThumb = meal.strMealThumb
    }
    
}

class Ingredient: Decodable {
    let ingredient: String
    let measure : String
    
    init(ingredient: String, measure: String) {
        self.ingredient = ingredient
        self.measure = measure
    }
}
