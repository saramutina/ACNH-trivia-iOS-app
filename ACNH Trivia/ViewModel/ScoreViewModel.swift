//
//  ScoreViewModel.swift
//  ACNH Trivia
//
//  Created by Katie Saramutina on 13.04.2022.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
    
    var emojiForPercentage: String {
        if percentage == 100 {
            return "⭐️"
        } else if percentage >= 80 {
            return "🌈"
        } else if percentage >= 60 {
            return "🌸"
        } else if percentage >= 40 {
            return "🍄"
        } else {
            return "🌱"
        }
    }
}
