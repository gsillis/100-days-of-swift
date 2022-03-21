//
//  CountriesController.swift
//  Project2
//
//  Created by Gabriela Sillis on 18/03/22.
//

import Foundation
 
final class CountriesController {
    var countries = [String]()
    var score = 0
    var answer = 0
    
    func createCountriesArray() {
        countries = [
            "estonia",
            "france",
            "germany",
            "ireland",
            "italy",
            "monaco",
            "nigeria",
            "poland",
            "russia",
            "spain",
            "uk",
            "us"
        ]
    }
    
    func correctAnswer() {
        answer = .random(in: 0...2)
    }
}
