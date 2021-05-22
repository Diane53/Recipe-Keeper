//
//  ContentView.swift
//  Recipe Keeper
//
//  Created by Xcode Server on 5/5/21.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
       
        NavigationView {
            List(model.recipes) { r in
            NavigationLink(
                destination: RecipeDetailView(recipe:r),
                label: {
                    HStack(spacing: 20.0) {
                        Image(r.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(10.0)
                        Text(r.name)
                            .font(.title3)
                    }
                })
            }
            .navigationBarTitle("My Recipes")
        }
    }
}



struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
