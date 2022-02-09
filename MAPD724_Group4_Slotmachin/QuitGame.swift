//
//  SwiftUIView.swift
//  MAPD724_Group4_Slotmachin
//
//Authors: Ridham Patel (301207688)
//         Shrinal Patel (301204864)
//         Pushparaj Sanjeevan (301213104)
//

import SwiftUI

struct QuitGame: View {
    var body: some View {
        ZStack{
        Image("Jackpot1").resizable().ignoresSafeArea()
            Text("Thanks for playing!!").font(.largeTitle).fontWeight(.bold).foregroundColor(.white)
        }
    }
}

struct QuitGame_Previews: PreviewProvider {
    static var previews: some View {
        QuitGame().previewInterfaceOrientation(.landscapeLeft)
    }
}
