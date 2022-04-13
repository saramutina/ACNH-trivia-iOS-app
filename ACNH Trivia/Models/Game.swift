//
//  Game.swift
//  ACNH Trivia
//
//  Created by Katie Saramutina on 05.04.2022.
//

import Foundation

struct Game {
    // Properties
    private(set) var currentQuestionIndex = 0
    private(set) var guesses = [Question: Int]() // question : index of the answered guess
    private(set) var isOver = false
    private let questions = Question.allQuestions.prefix(10).shuffled()
    
    // Computed properties:
    var numberOfQuestions: Int {
        questions.count
    }
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    // Mutating functions:
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}
