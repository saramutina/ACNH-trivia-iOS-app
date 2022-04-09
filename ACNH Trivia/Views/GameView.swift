//
//  ContentView.swift
//  ACNH Trivia
//
//  Created by Katie Saramutina on 25.03.2022.
//

import SwiftUI

struct GameView: View {
    
    let question = Question(questionText: "When was the first Animal Crossing game released?", possibleAnswers: ["1978", "1990", "2001", "2005"], correctAnswerIndex: 2)
    
    @State var mainColor = GameColor.main
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                HStack() {
                    ZStack() {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .frame(width: 100, height: 40)
                        Text("1/10")
                            .font(.title2)
                    }
                    Spacer()
                        .frame(width: 255)
                }
                ZStack () {
                    RoundedRectangle(cornerRadius: 50)
                        .fill(Color.white)
                        .frame(width: 400, height: 220)
                    Text(question.questionText)
                        .padding(30)
                        .font(.largeTitle)
                }
                Spacer()
                VStack(alignment: .center, spacing: 15) {
                    ForEach(0..<question.possibleAnswers.count, id: \.self) { answerIndex in
                        Button(action: {
                            print("Tapped on Choice \(question.possibleAnswers[answerIndex])")
                            mainColor = answerIndex == question.correctAnswerIndex ? GameColor.correctGuess : GameColor.incorrectGuess
                        }) {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        }
                    }
                }
            }
        }
        .foregroundColor(GameColor.text)
    }
    
    struct GameView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
                .previewDevice("iPhone 13 Pro Max")
        }
    }
}
