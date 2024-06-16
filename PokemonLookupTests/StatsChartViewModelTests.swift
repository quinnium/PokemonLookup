//
//  StatsChartViewModelTests.swift
//  PokemonLookupTests
//
//  Created by Quinn on 16/06/2024.
//

import XCTest

final class StatsChartViewModelTests: XCTestCase {

    var sut: StatsChartView.ViewModel!
    
    override func setUp() {
        super.setUp()
        let stats = [PokemonStat(value: 425, name: Constants.StatNames.hp),
                     PokemonStat(value: 99, name: Constants.StatNames.attack),
                     PokemonStat(value: 60, name: Constants.StatNames.defense),
                     PokemonStat(value: 39, name: Constants.StatNames.specialAttack),
                     PokemonStat(value: 50, name: Constants.StatNames.specialDefense),
                     PokemonStat(value: 23, name: Constants.StatNames.speed)]
        sut = StatsChartView.ViewModel(stats: stats)
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_stats_values_read_correctly() {
        XCTAssertEqual(sut.valueHP, 425)
        XCTAssertEqual(sut.valueAttack, 99)
        XCTAssertEqual(sut.valueDefence, 60)
        XCTAssertEqual(sut.valueSpecialAttack, 39)
        XCTAssertEqual(sut.valueSpecialDefence, 50)
        XCTAssertEqual(sut.valueSpeed, 23)
    }
    
    func test_max_value_increased_when_required() {
        XCTAssertEqual(sut.maxValue, 425)
    }


}
