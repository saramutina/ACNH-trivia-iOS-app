//
//  BottomTextView.swift
//  ACNH Trivia
//
//  Created by Katie Saramutina on 16.04.2022.
//

import SwiftUI

struct BottomTextView: View {
    var text: String
    
    var body: some View {
        HStack{
            Spacer()
            Text(text)
                .font(.title)
                .bold()
                .padding()
            Spacer()
        } .background(GameColor.accent)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(text: "Next")
    }
}
