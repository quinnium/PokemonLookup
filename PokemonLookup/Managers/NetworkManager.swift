//
//  NetworkManager.swift
//  PokemonLookup
//
//  Created by Quinn on 06/06/2024.
//

import Foundation


actor NetworkManager {
    
    private let baseURL = "https://pokeapi.co/api/v2/"
    private let session = URLSession.shared
    
    func fetchPokedex() async throws -> Pokedex {
        // Fetch JSON data
        let endPoint = baseURL + "pokemon?limit=200000&offset=0"
        guard let url = URL(string: endPoint) else { throw PLError.invalidURL}
        let (data, _) = try await session.data(from: url)
        // Decode JSON data
        let decoder = JSONDecoder()
        do {
            let pokedex = try decoder.decode(Pokedex.self, from: data)
            return pokedex
        } catch {
            throw PLError.invalidData
        }
    }
    
    func fetchPokemon(fromURLString urlString: String) async throws -> Pokemon {
        guard let url = URL(string: urlString) else { throw PLError.invalidURL}
        let (data, _) = try await session.data(from: url)
        // Decod JSON data
        let decoder = JSONDecoder()
        do {
            let pokemon = try decoder.decode(Pokemon.self, from: data)
            return pokemon
        } catch {
            throw PLError.invalidData
        }
    }
}
