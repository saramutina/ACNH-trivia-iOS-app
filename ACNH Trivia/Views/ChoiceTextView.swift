//
//  ChoiceTextView.swift
//  ACNH Trivia
//
//  Created by Katie Saramutina on 02.04.2022.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = Color(red: 129/255, green: 241/255, blue: 247/255)
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(accentColor, lineWidth: 7))
            .background(Color.white)
            .cornerRadius(25)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Answer")
    }
}
