//
//  RecipeDetailView.swift
//  Recipe Keeper
//
//  Created by Xcode Server on 5/17/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                Image(recipe.image)
                    .resizable()
                    .padding(.bottom, 15.0)
                    .frame(width: 0.0)
                    .scaledToFit()
            }
            .padding(.horizontal, 7.0)
            VStack(alignment: .leading, spacing: 3) {
                    Text("Ingredients").font(.headline)
                ForEach(recipe.ingredients) {
                        item in
                    Text("\(item.name)")
                            .font(.callout)
                    }
            }
            .padding(.horizontal, 7.0)
            
            VStack(alignment: .leading, spacing: 3){
                Text("Directions")
                    .font(.headline)
                ForEach(0..<recipe.directions.count, id:\.self) {
                    index in
                    Text(String(index + 1) + "." + recipe.directions[index])
                    .font(.callout)
                }
            }
            .padding(.horizontal, 7.0)
        }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Create a dummy recipe and pass it into the detail view so that we can see a preview
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
