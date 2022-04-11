//
//  ChoiceTextView.swift
//  ACNH Trivia
//
//  Created by Katie Saramutina on 02.04.2022.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    
    let color: Color
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(GameColor.accent, lineWidth: 7))
            .background(color)
            .cornerRadius(25)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Answer", color: Color.white)
    }
}
