//
//  ContentView.swift
//  ACNH Trivia
//
//  Created by Katie Saramutina on 25.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    let question = Question(questionText: "When was the first Animal Crossing game released?", possibleAnswers: ["1978", "1990", "2001", "2005"], correctAnswerIndex: 2)
    
    @State var mainColor = Color(red: 157/255, green: 255/255, blue: 176/255)
    let accentColor = Color(red: 129/255, green: 241/255, blue: 247/255)
    let textColor = Color(red: 166/255, green: 111/255, blue: 33/255)
    
    
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
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                        }) {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        }
                    }
                }
            }
        }
        .foregroundColor(textColor)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewDevice("iPhone 13 Pro Max")
        }
    }
}
