//
//  CardList.swift
//  foundation_pokedex
//
//  Created by Rafael Ribeiro on 3/20/25.
//
import SwiftUI

struct CardList: View {
    
    let columns = Array(repeating: GridItem(.flexible(minimum: 50, maximum: 150)), count: 2)
    
    var pokemonsData: [Pokemon] = pokemons
    var body: some View {
        
        
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                LazyVGrid(columns: columns){
                    ForEach(pokemonsData) { pokemonData in
                        
                        NavigationLink(
                            destination: StatisticsView(pokemon: pokemonData), label: {
                                CardView(pokemonCardData: pokemonData)
                            })
                    }
                }
                
            }
        }
    }
    
}

#Preview {
    CardList()
}
