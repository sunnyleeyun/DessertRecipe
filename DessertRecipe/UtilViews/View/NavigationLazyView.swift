//
//  NavigationLazyView.swift
//  DessertRecipe
//
//  Created by 李昀 on 2023/11/11.
//

import SwiftUI

struct NavigationLazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    var body: Content {
        build()
    }
}
