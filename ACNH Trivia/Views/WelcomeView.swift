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
                    VStack {
                        Text("""
                        Test your Animal Crossing knowlege!
                        
                        Select the correct answers to the following questions.
                        """)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(GameColor.accent, lineWidth: 7))
                        .background(Color.white)
                        .cornerRadius(25)
                    }.padding(EdgeInsets(top: 40, leading: 10, bottom: 0, trailing: 10))
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(text: "Let's go!")
                        })
                }
                .foregroundColor(GameColor.text)
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
