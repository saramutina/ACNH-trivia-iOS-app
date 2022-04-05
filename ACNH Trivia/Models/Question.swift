//
//  Question.swift
//  ACNH Trivia
//
//  Created by Katie Saramutina on 01.04.2022.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "When was the first Animal Crossing game released?",
                 possibleAnswers: [
                    "1978",
                    "1990",
                    "2001",
                    "2005"
                 ],
                 correctAnswerIndex: 2),
    Question(questionText: "What is 🦉 Blathers (the museum director) afraid of?",
             possibleAnswers: [
                "🪰 Bugs",
                "🐍 Snakes",
                "✈️ Heights",
                "🤡 Night clowns"
             ],
             correctAnswerIndex: 0),
    Question(questionText: "What fruit you can NOT grow in Animal Crossing: New Horizons?",
             possibleAnswers: [
                "🍑 Peach",
                "🍒 Cherry",
                "🍐 Pear",
                "🍋 Lemon"
             ],
             correctAnswerIndex: 3),
    ]
}
