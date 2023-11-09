//
//  HomeView.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/8.
//

import SwiftUI

struct HomeView: View {
  @ObservedObject var viewModel = HomeViewModel()
  
  var body: some View {
    List(viewModel.meals) { meal in
      Text("\(meal.strMeal)")
    }
  }
}

#Preview {
  HomeView()
}
