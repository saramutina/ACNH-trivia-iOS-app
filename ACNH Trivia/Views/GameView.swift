//
//  ContentView.swift
//  ACNH Trivia
//
//  Created by Katie Saramutina on 25.03.2022.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            QuestionView(question: viewModel.currentQuestion, questionProgress: viewModel.questionProgressText)
        }
        .foregroundColor(GameColor.text)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
        .background(
            NavigationLink(
                destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)),
                isActive: .constant(viewModel.gameIsOver),
                label: {EmptyView ()})
        )
    }
    
    struct GameView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
                .previewDevice("iPhone 13 Pro Max")
        }
    }
}
