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
        switch percentage {
        case 100:
            return "🦄"
        case 90:
            return "🌈"
        case 80:
            return "☀️"
        case 70:
            return "✨"
        case 60:
            return "🍄"
        case 50:
            return "🌸"
        case 40:
            return "🌷"
        case 30:
            return "🌱"
        case 20:
            return "🍁"
        case 10:
            return "🫧"
        default:
            return "✨"
        }
    }
}
