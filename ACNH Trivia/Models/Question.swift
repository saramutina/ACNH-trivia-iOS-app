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
        Question(questionText: "What the name of the main currency in Animal Crossing Games?",
                 possibleAnswers: [
                    "🍃 Leaves",
                    "🔔 Bells",
                    "🍄 Mushrooms",
                    "✨ Sparkles"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "What is the name of a 👻 ghost-spirit that sometimes appears at night?",
                 possibleAnswers: [
                    "Casper",
                    "Spirit",
                    "Wisp",
                    "Specter"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "What activity you can NOT do in Animal Crossing: New Horizons?",
                 possibleAnswers: [
                    "🐶 Petting a dog",
                    "🌊 Swimming",
                    "🌱 Gardening",
                    "🌠 Wishing on a shooting star"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "How many cat 🐱 villagers are there in Animal Crossing: New Horizons?",
                 possibleAnswers: [
                    "9",
                    "14",
                    "18",
                    "23"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "Who runs the tailor shop if you build it on your island?",
                 possibleAnswers: [
                    "Timmy and Tommy",
                    "The Able sisters",
                    "Tom Nook",
                    "Reese and Cyrus"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "First 2 villagers on your island have what personality types?",
                 possibleAnswers: [
                    "Normal and lazy",
                    "Peppy and smug",
                    "Snooty and cranky",
                    "Sisterly and jock"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "What is the most expensive deep-sea creature you can find in the ocean?",
                 possibleAnswers: [
                    "🐚 Gigas giant clam",
                    "🦑 Vampire squid",
                    "🐷 Sea pig",
                    "🦀 Spider crab"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "What rating should your island have for K.K. Slider to give a concert there?",
                 possibleAnswers: [
                    "⭐️⭐️",
                    "⭐️⭐️⭐️",
                    "⭐️⭐️⭐️⭐️",
                    "⭐️⭐️⭐️⭐️⭐️"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "Who can tell you myths about different star constellations?",
                 possibleAnswers: [
                    "Celeste",
                    "Aurora",
                    "Luna",
                    "Étoile"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Animal Crossing's version of stock market uses what item? 📉📈",
                 possibleAnswers: [
                    "Seashells",
                    "Acorns",
                    "Turnips",
                    "Cupcakes"
                 ],
                 correctAnswerIndex: 2)
    ]
}
