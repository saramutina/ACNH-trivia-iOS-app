//
//  QuestionView.swift
//  ACNH Trivia
//
//  Created by Katie Saramutina on 11.04.2022.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    
    let question: Question
    
    let questionProgress: String
    
    var body: some View {
        VStack {
            VStack {
                HStack() {
                    Text(questionProgress)
                        .font(.title2)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(GameColor.accent, lineWidth: 0)
                        )
                        .background(Color.white)
                        .cornerRadius(25)
                    Spacer()
                        .frame(width: 255)
                }
                Text(question.questionText)
                    .padding(30)
                    .font(.largeTitle)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(GameColor.accent, lineWidth: 0)
                    )
                    .multilineTextAlignment(.center)
                    .background(Color.white)
                    .cornerRadius(40)
                Spacer()
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            
            VStack(alignment: .center, spacing: 15) {
                ForEach(0..<question.possibleAnswers.count, id: \.self) { answerIndex in
                    Button(action: {
                        print("Tapped on Choice \(question.possibleAnswers[answerIndex])")
                        viewModel.makeGuess(atIndex: answerIndex)
                    }) {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex],
                                       color: viewModel.color(forOptionIndex: answerIndex))
                    }
                }
            }
            Spacer()
            if viewModel.guessWasMade {
                Button(action: {
                    viewModel.displayNextScreen()
                }) {
                    BottomTextView(text: "Next")
                }
            }
        }
        .foregroundColor(GameColor.text)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: GameViewModel().currentQuestion, questionProgress: GameViewModel().questionProgressText)
            .environmentObject(GameViewModel())
    }
}
