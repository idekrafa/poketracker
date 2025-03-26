//
//  PokemonView.swift
//  foundation_pokedex
//
//  Created by Rafael Ribeiro on 3/20/25.
//

import SwiftUI

struct PokemonView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.lightGrass)
                .frame(width: 150, height: 200)
                .cornerRadius(30)
            VStack{
                Image("img_1")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("Bulbasaur")
                    .font(.headline)
                Text("001")
                    .font(.caption)
            }
            
                
        }
        
    }
}

#Preview {
    PokemonView()
}
