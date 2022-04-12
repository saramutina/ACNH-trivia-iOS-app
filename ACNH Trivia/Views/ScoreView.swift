//
//  ScoreView.swift
//  ACNH Trivia
//
//  Created by Katie Saramutina on 12.04.2022.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                VStack{
                    Text("Your final score:")
                    Text("\(viewModel.emojiForPercentage) \(viewModel.percentage) % \(viewModel.emojiForPercentage)").bold()
                }
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding(40)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(GameColor.accent, lineWidth: 7))
                .background(Color.white)
                .cornerRadius(25)
                Spacer()
                Text("✅ \(viewModel.correctGuesses)").font(.system(size: 30))
                    .padding()
                Text("❌ \(viewModel.incorrectGuesses)").font(.system(size: 30))
                
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        HStack{
                            Spacer()
                            Text("Re-take Quiz")
                                .font(.title)
                                .bold()
                                .padding()
                            Spacer()
                        } .background(GameColor.accent)
                    }
                )
            }
        }
        .foregroundColor(GameColor.text)
        .navigationBarHidden(true)
    }
}


struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 7, incorrectGuesses: 6))
    }
}
