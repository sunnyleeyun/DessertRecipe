//
//  ErrorView.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/11.
//

import SwiftUI

struct ErrorView: View {
    var body: some View {
        VStack {
            Text("Error loading data")
                .font(.headline)
                .foregroundColor(.red)
                .padding()
        }
    }
}

#Preview {
    ErrorView()
}
