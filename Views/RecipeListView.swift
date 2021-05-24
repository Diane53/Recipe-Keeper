//
//  ContentView.swift
//  Recipe Keeper
//
//  Created by Xcode Server on 5/5/21.
//

import SwiftUI

struct RecipeListView: View {
    
    @ EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        NavigationView {
            List(model.recipes) {r in
                
                NavigationLink (
                    destination: RecipeDetailView(recipe:r),
                    label: {
                // MARK: row item
                        HStack(spacing: 20){
                    //Recipe Image
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipped()
                            .cornerRadius(10)
                        //MARK: reicpe name
                        Text(r.name)
                    }
                    })
            }
            .navigationBarTitle("Recipe List")
        }
        
    }
}


struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
            
        RecipeListView()
    }
}

