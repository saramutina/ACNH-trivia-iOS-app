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
            HStack() {
                ZStack() {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width: 100, height: 40)
                    Text(questionProgress)
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
                    HStack{
                        Spacer()
                        Text("Next")
                            .font(.title)
                            .bold()
                            .padding()
                        Spacer()
                    } .background(GameColor.accent)
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: GameViewModel().currentQuestion, questionProgress: GameViewModel().questionProgressText)
            .environmentObject(GameViewModel())
    }
}
