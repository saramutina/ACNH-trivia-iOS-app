//
//  WelcomeView.swift
//  ACNH Trivia
//
//  Created by Katie Saramutina on 09.04.2022.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack{
                    Spacer()
                        Text("""
Test your Animal Crossing knowlege!

Select the correct answers to the following questions.
""")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(GameColor.accent, lineWidth: 7))
                        .background(Color.white)
                        .cornerRadius(25)
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            HStack {
                                Spacer()
                                Text("Let's go!")
                                    .font(.title)
                                    .bold()
                                    .padding()
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(GameColor.accent, lineWidth: 7))
                                    .background(Color.white)
                                    .cornerRadius(25)
                                Spacer()
                            }
                        })
                    Spacer()
                }
                .foregroundColor(GameColor.text)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            }
        }
        .navigationBarHidden(true)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
