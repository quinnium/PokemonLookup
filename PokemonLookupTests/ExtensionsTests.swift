//
//  ExtensionsTests.swift
//  PokemonLookupTests
//
//  Created by Quinn on 16/06/2024.
//

import XCTest
import SwiftUI
@testable import PokemonLookup

final class ExtensionsTests: XCTestCase {

    func test_array_isNotEmpty_is_true_when_empty() {
        let emptyArray  = [1]
        let emptyString = " "
        XCTAssertTrue(emptyArray.isNotEmpty)
        XCTAssertTrue(emptyString.isNotEmpty)
        XCTAssertFalse(emptyArray.isEmpty)
        XCTAssertFalse(emptyString.isEmpty)
    }

    func test_lighten_by_more_then_oneHundredPercent_produces_white() {
        // Arrange
        let redColor = UIColor.red
        
        // Act
        let lightenedColor = redColor.lightenByPercentage(by: 100)
        var red: CGFloat    = 0
        var green: CGFloat  = 0
        var blue: CGFloat   = 0
        var alpha: CGFloat  = 0
        let _ = lightenedColor.getRed(&red,
                                               green: &green,
                                               blue: &blue,
                                               alpha: &alpha)
        // Assert
        XCTAssertEqual(red, 1)
        XCTAssertEqual(green, 1)
        XCTAssertEqual(blue, 1)
        XCTAssertEqual(alpha, 1)
    }

    func test_darken_by_more_then_oneHundredPercent_produces_black() {
        // Arrange
        let redColor = UIColor.red
        
        // Act
        let lightenedColor = redColor.darkenByPercentage(by: 100)
        var red: CGFloat    = 0
        var green: CGFloat  = 0
        var blue: CGFloat   = 0
        var alpha: CGFloat  = 0
        let _ = lightenedColor.getRed(&red,
                                               green: &green,
                                               blue: &blue,
                                               alpha: &alpha)
        // Assert
        XCTAssertEqual(red, 0)
        XCTAssertEqual(green, 0)
        XCTAssertEqual(blue, 0)
        XCTAssertEqual(alpha, 1)
    }
    
}
