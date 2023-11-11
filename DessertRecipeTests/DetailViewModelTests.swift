//
//  DetailViewModelTests.swift
//  DessertRecipeTests
//
//  Created by 李昀 on 2023/11/9.
//

import XCTest

final class DetailViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    @MainActor func testRecipeDetailLoaded() async {
        let mock = MockRecipeService()
        let detailVm = DetailViewModel(recipeFetching: mock, meal: Meal(strMeal: "Hot Chocolate Fudge", strMealThumb: "https://www.themealdb.com/images/media/meals/xrysxr1483568462.jpg", idMeal: "52787"))
        await detailVm.getDessertDetail()
        XCTAssertEqual(detailVm.mealDetail.strIngredient1, "Chocolate Chips")
        XCTAssertEqual(detailVm.mealDetail.ingredients.count, 6)
    }


}

