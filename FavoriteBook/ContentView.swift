//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Atil Samancioglu on 14.08.2019.
//  Copyright © 2019 Atil Samancioglu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
        
        List {
            
            ForEach(myFavorites) { favorite in
                Section(header: Text(favorite.title)) {
                    ForEach(favorite.elements) { element in
                        NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
                           Text(element.name)
                        }
                    }
                }
            }
            
            
            
            }.navigationBarTitle(Text("Favorite Book"))
    }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
