//
//  QuitConfirmation.swift
//  MAPD724_Group4_Slotmachin
//
//Authors: Ridham Patel (301207688)
//         Shrinal Patel (301204864)
//         Pushparaj Sanjeevan (301213104)
//

import SwiftUI

struct QuitConfirmation: View {
    var body: some View {
        NavigationView{
        ZStack{
        Image("Jackpot1").resizable().ignoresSafeArea()
            VStack{
            Text("Are you sure you want to quit the game?").font(.largeTitle).fontWeight(.bold).foregroundColor(.white)
                Text(" ")
                Text(" ")
                HStack{
                    NavigationLink(destination: QuitGame())
                    {
                        Text("YES").font(.largeTitle).fontWeight(.bold).foregroundColor(Color(red: 8/255, green: 98/255, blue: 32/255)).padding(10).padding(.horizontal, 20).background(Color.yellow).cornerRadius(30)
                    }
                    Text("      ")
                    NavigationLink(destination: ContentView())
                    {
                        Text("NO").font(.largeTitle).fontWeight(.bold).foregroundColor(Color(red: 8/255, green: 98/255, blue: 32/255)).padding(10).padding(.horizontal, 20).background(Color.yellow).cornerRadius(30)
                    }
                    }
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct QuitConfirmation_Previews: PreviewProvider {
    static var previews: some View {
        QuitConfirmation().previewInterfaceOrientation(.landscapeLeft)
    }
}
