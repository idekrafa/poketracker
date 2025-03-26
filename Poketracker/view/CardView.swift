//
//  CardView.swift
//  foundation_pokedex
//
//  Created by Rafael Ribeiro on 3/20/25.
//

import SwiftUI

struct CardView: View {
    
    var pokemonCardData: Pokemon
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(pokemonCardData.imageName) /* Pokemon img */
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height:150)
            CardText
                .padding(.horizontal, 35)
        }
        .frame(width: 150, height: 200)
        .background(Color.lightGrass)
        .clipShape(RoundedRectangle(cornerRadius: 16))
//        .frame(width: 300, height: 300)
//        .padding(.horizontal, 40)
//        .border(.gray)
    }
    
    var CardText : some View {
        VStack{
            Text(pokemonCardData.name) /* Pokemon name */
                .font(.headline)
            Text("\(pokemonCardData.id)") /*Pokemon ID*/
                .font(.caption)
            
        }
        .padding(.bottom, 20)
    }
        
    
}

#Preview {
    CardView(pokemonCardData: Pokemon(id: 1, name: "bulbasaur", types: [.grass, .poison], imageName:"img_1"))
}
