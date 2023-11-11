//
//  MockRecipeService.swift
//  DessertRecipeTests
//
//  Created by 李昀 on 2023/11/9.
//

import Foundation

class MockRecipeService: RecipeFetching {
    
    
    func fetchRecipes(category: String) async throws -> [Meal] {
        let jsonData = jsonStringDesserts.data(using: .utf8)!
        return try JSONDecoder().decode(Meals.self, from: jsonData).meals
    }
    
    func fetchRecipeDetail(id: String) async throws -> MealDetail {
        let jsonData = jsonStringChocolateChips.data(using: .utf8)!
        return try JSONDecoder().decode(MealDetails.self, from: jsonData).meals[0]
    }
    
    let jsonStringChocolateChips = """
    {
      "meals": [
        {
          "idMeal": "52787",
          "strMeal": "Hot Chocolate Fudge",
          "strDrinkAlternate": null,
          "strCategory": "Dessert",
          "strArea": "American",
          "strInstructions": "Line an 8-inch-square baking pan with wax paper or foil, and coat with non-stick spray. In a microwave-safe bowl, combine the dark chocolate chips, heavy cream and half of the sweetened condensed milk. Microwave the dark chocolate mixture in 20-second intervals, stirring in between each interval, until the chocolate is melted. Add the vanilla extract to the dark chocolate mixture and stir well until smooth. Transfer the dark chocolate mixture into the prepared pan and spread into an even layer. In a separate bowl, combine the white chocolate chips with the remaining half of the sweetened condensed milk. Microwave the white chocolate mixture in 20-second intervals, stirring in between each interval, until the chocolate is melted. Evenly spread the white chocolate mixture on top of dark chocolate layer. Top the chocolate layers with the Mallow Bits or miniature marshmallows, and gently press them down. Refrigerate for 4 hours, or until set. Remove the fudge and wax paper from the pan. Carefully peel all of the wax paper from the fudge. Cut the fudge into bite-sized pieces and serve.",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/xrysxr1483568462.jpg",
          "strTags": "Snack,Chocolate",
          "strYoutube": "https://www.youtube.com/watch?v=oJvbsVSblfk",
          "strIngredient1": "Chocolate Chips",
          "strIngredient2": "Heavy Cream",
          "strIngredient3": "Condensed Milk",
          "strIngredient4": "Vanilla Extract",
          "strIngredient5": "White Chocolate Chips",
          "strIngredient6": "Miniature Marshmallows",
          "strIngredient7": "",
          "strIngredient8": "",
          "strIngredient9": "",
          "strIngredient10": "",
          "strIngredient11": "",
          "strIngredient12": "",
          "strIngredient13": "",
          "strIngredient14": "",
          "strIngredient15": "",
          "strIngredient16": "",
          "strIngredient17": "",
          "strIngredient18": "",
          "strIngredient19": "",
          "strIngredient20": "",
          "strMeasure1": "2 cups",
          "strMeasure2": "2 tbs",
          "strMeasure3": "1 – 14-ounce can",
          "strMeasure4": "1 tsp",
          "strMeasure5": "1-⅓ cups",
          "strMeasure6": "1-½ cups",
          "strMeasure7": "",
          "strMeasure8": "",
          "strMeasure9": "",
          "strMeasure10": "",
          "strMeasure11": "",
          "strMeasure12": "",
          "strMeasure13": "",
          "strMeasure14": "",
          "strMeasure15": "",
          "strMeasure16": "",
          "strMeasure17": "",
          "strMeasure18": "",
          "strMeasure19": "",
          "strMeasure20": "",
          "strSource": "",
          "strImageSource": null,
          "strCreativeCommonsConfirmed": null,
          "dateModified": null
        }
      ]
    }

    """
    let jsonStringDesserts = """
    {
      "meals": [
        {
          "strMeal": "Apam balik",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg",
          "idMeal": "53049"
        },
        {
          "strMeal": "Apple & Blackberry Crumble",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg",
          "idMeal": "52893"
        },
        {
          "strMeal": "Apple Frangipan Tart",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/wxywrq1468235067.jpg",
          "idMeal": "52768"
        },
        {
          "strMeal": "Bakewell tart",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/wyrqqq1468233628.jpg",
          "idMeal": "52767"
        },
        {
          "strMeal": "Banana Pancakes",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/sywswr1511383814.jpg",
          "idMeal": "52855"
        },
        {
          "strMeal": "Battenberg Cake",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/ywwrsp1511720277.jpg",
          "idMeal": "52894"
        },
        {
          "strMeal": "BeaverTails",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/ryppsv1511815505.jpg",
          "idMeal": "52928"
        },
        {
          "strMeal": "Blackberry Fool",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/rpvptu1511641092.jpg",
          "idMeal": "52891"
        },
        {
          "strMeal": "Bread and Butter Pudding",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/xqwwpy1483908697.jpg",
          "idMeal": "52792"
        },
        {
          "strMeal": "Budino Di Ricotta",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/1549542877.jpg",
          "idMeal": "52961"
        },
        {
          "strMeal": "Canadian Butter Tarts",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/wpputp1511812960.jpg",
          "idMeal": "52923"
        },
        {
          "strMeal": "Carrot Cake",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/vrspxv1511722107.jpg",
          "idMeal": "52897"
        },
        {
          "strMeal": "Cashew Ghoriba Biscuits",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/t3r3ka1560461972.jpg",
          "idMeal": "52976"
        },
        {
          "strMeal": "Chelsea Buns",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/vqpwrv1511723001.jpg",
          "idMeal": "52898"
        },
        {
          "strMeal": "Chinon Apple Tarts",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/qtqwwu1511792650.jpg",
          "idMeal": "52910"
        },
        {
          "strMeal": "Choc Chip Pecan Pie",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/rqvwxt1511384809.jpg",
          "idMeal": "52856"
        },
        {
          "strMeal": "Chocolate Avocado Mousse",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/uttuxy1511382180.jpg",
          "idMeal": "52853"
        },
        {
          "strMeal": "Chocolate Caramel Crispy",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/1550442508.jpg",
          "idMeal": "52966"
        },
        {
          "strMeal": "Chocolate Gateau",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/tqtywx1468317395.jpg",
          "idMeal": "52776"
        },
        {
          "strMeal": "Chocolate Raspberry Brownies",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/yypvst1511386427.jpg",
          "idMeal": "52860"
        },
        {
          "strMeal": "Chocolate Souffle",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/twspvx1511784937.jpg",
          "idMeal": "52905"
        },
        {
          "strMeal": "Christmas cake",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/ldnrm91576791881.jpg",
          "idMeal": "52990"
        },
        {
          "strMeal": "Christmas Pudding Flapjack",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/vvusxs1483907034.jpg",
          "idMeal": "52788"
        },
        {
          "strMeal": "Christmas Pudding Trifle",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/r33cud1576791081.jpg",
          "idMeal": "52989"
        },
        {
          "strMeal": "Classic Christmas pudding",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/1d85821576790598.jpg",
          "idMeal": "52988"
        },
        {
          "strMeal": "Dundee cake",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/wxyvqq1511723401.jpg",
          "idMeal": "52899"
        },
        {
          "strMeal": "Eccles Cakes",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/wtqrqw1511639627.jpg",
          "idMeal": "52888"
        },
        {
          "strMeal": "Eton Mess",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/uuxwvq1483907861.jpg",
          "idMeal": "52791"
        },
        {
          "strMeal": "Honey Yogurt Cheesecake",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/y2irzl1585563479.jpg",
          "idMeal": "53007"
        },
        {
          "strMeal": "Hot Chocolate Fudge",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/xrysxr1483568462.jpg",
          "idMeal": "52787"
        },
        {
          "strMeal": "Jam Roly-Poly",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/ysqupp1511640538.jpg",
          "idMeal": "52890"
        },
        {
          "strMeal": "Key Lime Pie",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/qpqtuu1511386216.jpg",
          "idMeal": "52859"
        },
        {
          "strMeal": "Krispy Kreme Donut",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/4i5cnx1587672171.jpg",
          "idMeal": "53015"
        },
        {
          "strMeal": "Madeira Cake",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/urtqut1511723591.jpg",
          "idMeal": "52900"
        },
        {
          "strMeal": "Mince Pies",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/qe8pf51576795532.jpg",
          "idMeal": "52991"
        },
        {
          "strMeal": "Nanaimo Bars",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/vwuprt1511813703.jpg",
          "idMeal": "52924"
        },
        {
          "strMeal": "New York cheesecake",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/swttys1511385853.jpg",
          "idMeal": "52858"
        },
        {
          "strMeal": "Pancakes",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/rwuyqx1511383174.jpg",
          "idMeal": "52854"
        },
        {
          "strMeal": "Parkin Cake",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/qxuqtt1511724269.jpg",
          "idMeal": "52902"
        },
        {
          "strMeal": "Peach & Blueberry Grunt",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/ssxvup1511387476.jpg",
          "idMeal": "52862"
        },
        {
          "strMeal": "Peanut Butter Cheesecake",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/qtuuys1511387068.jpg",
          "idMeal": "52861"
        },
        {
          "strMeal": "Peanut Butter Cookies",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/1544384070.jpg",
          "idMeal": "52958"
        },
        {
          "strMeal": "Pear Tarte Tatin",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/rxvxrr1511797671.jpg",
          "idMeal": "52916"
        },
        {
          "strMeal": "Polskie Naleśniki (Polish Pancakes)",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/58bkyo1593350017.jpg",
          "idMeal": "53022"
        },
        {
          "strMeal": "Portuguese custard tarts",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/vmz7gl1614350221.jpg",
          "idMeal": "53046"
        },
        {
          "strMeal": "Pouding chomeur",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/yqqqwu1511816912.jpg",
          "idMeal": "52932"
        },
        {
          "strMeal": "Pumpkin Pie",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/usuqtp1511385394.jpg",
          "idMeal": "52857"
        },
        {
          "strMeal": "Rock Cakes",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/tqrrsq1511723764.jpg",
          "idMeal": "52901"
        },
        {
          "strMeal": "Rocky Road Fudge",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/vtxyxv1483567157.jpg",
          "idMeal": "52786"
        },
        {
          "strMeal": "Rogaliki (Polish Croissant Cookies)",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/7mxnzz1593350801.jpg",
          "idMeal": "53024"
        },
        {
          "strMeal": "Salted Caramel Cheescake",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/xqrwyr1511133646.jpg",
          "idMeal": "52833"
        },
        {
          "strMeal": "Seri muka kuih",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/6ut2og1619790195.jpg",
          "idMeal": "53054"
        },
        {
          "strMeal": "Spotted Dick",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/xqvyqr1511638875.jpg",
          "idMeal": "52886"
        },
        {
          "strMeal": "Sticky Toffee Pudding",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/xqqqtu1511637379.jpg",
          "idMeal": "52883"
        },
        {
          "strMeal": "Sticky Toffee Pudding Ultimate",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/xrptpq1483909204.jpg",
          "idMeal": "52793"
        },
        {
          "strMeal": "Strawberries Romanoff",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/oe8rg51699014028.jpg",
          "idMeal": "53082"
        },
        {
          "strMeal": "Strawberry Rhubarb Pie",
          "strMealThumb": "https://www.themealdb.com/images/media/meals/178z5o1585514569.jpg",
          "idMeal": "53005"
        }
        ]
    }
    """
    
}
