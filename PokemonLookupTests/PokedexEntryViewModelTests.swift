//
//  ExtensionsTests.swift
//  ExtensionsTests
//
//  Created by Quinn on 16/06/2024.
//

import XCTest
@testable import PokemonLookup

final class PokedexEntryViewModelTests: XCTestCase {

    var sut: PokedexEntryView.ViewModel!
    
    override func setUp() {
        super.setUp()
        let mockEntry = PokedexEntry(name: "a-test name'saur", url: "")
        sut = PokedexEntryView.ViewModel(pokedexEntry: mockEntry, selectedPokemon: .constant(nil))
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_name_formatting_corectly() {
        XCTAssertEqual(sut.name, "A-Test Name'saur")
    }

}
