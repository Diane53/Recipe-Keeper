//
//  DataService.swift
//  Recipe Keeper
//
//  Created by Xcode Server on 5/16/21.
//

import Foundation
import SwiftUI

//This file crreates a single location from which all data is fetched

class DataService {
    
    func getLocalData() -> [Recipe] {
        // func to parse json data
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        guard pathString != nil else {
            return [Recipe]()
        }
        let url = URL(fileURLWithPath: pathString!)
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do{
                let recipeData = try decoder.decode ([Recipe].self, from: data)
                for r in recipeData {
                    r.id = UUID()
                }
                return recipeData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
    return [Recipe]()
}
}

