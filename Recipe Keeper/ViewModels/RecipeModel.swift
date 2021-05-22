//
//  RecipeModel.swift
//  Recipe Keeper
//
//  Created by Xcode Server on 5/16/21.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
   
    init() {
        let service = DataService()
        self.recipes = service.getLocalData()
    }
}
