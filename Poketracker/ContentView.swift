//
//  ContentView.swift
//  foundation_pokedex
//
//  Created by Diego Saragoza Da Silva on 18/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Pokedex", systemImage : "magazine") {
                PokedexView()
            }
            Tab("Estatisticas", systemImage : "chart.xyaxis.line") {
                StatisticsView(pokemon: pokemons[0])
            }
//            Tab("Bag", systemImage: "backpack.fill"){
//                Backpack()
//            }
        }
    }
}

#Preview {
    ContentView()
}
