//
//  HomeView.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/8.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel(recipeFetching: RecipeService(networkManager: NetworkManager()))
    private let aspect = 1.5
    @State var showTestView = false
    
    var body: some View {
        NavigationView {
            List(viewModel.meals) { meal in
                ZStack(alignment: .leading) {
                    NavigationLink(destination: DetailView())  {
                        EmptyView()
                    }.opacity(0)
                    VStack {
                        AsyncImage(url: URL(string: meal.strMealThumb))  { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }.aspectRatio(aspect, contentMode: .fill)
                        HStack {
                            VStack(alignment: .leading) {
                                Text("\(meal.strMeal)")
                                    .font(.headline)
                                    .foregroundColor(.secondary)
                            }
                            .layoutPriority(100)
                            Spacer()
                        }
                        .padding()
                    }
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
                    )
                    .padding([.top, .horizontal])
                }.navigationTitle("Desserts")
            }
        }
    }
}

#Preview {
    HomeView()
}
