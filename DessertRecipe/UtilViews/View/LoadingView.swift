//
//  LoadingView.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/11.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView("Loading...")
            .progressViewStyle(CircularProgressViewStyle())
            .padding()
    }
}

#Preview {
    LoadingView()
}
