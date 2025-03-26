//
//  PokedexView.swift
//  foundation_pokedex
//
//  Created by Diego Saragoza Da Silva on 18/03/25.
//

import SwiftUI


struct PokedexView : View {
    
    @State private var searchTerm = ""
    
    
    var body : some View {
        NavigationStack{
            ZStack{
                VStack {
                }
                .font(.system(size: 16))
                .navigationTitle("Pokédex")
                .searchable(text: $searchTerm, prompt: "Search Pokémons")
            }
            
            
            CardList()
        }
    }
}

#Preview {
    PokedexView()
}
