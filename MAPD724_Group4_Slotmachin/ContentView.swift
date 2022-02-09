//
//  ContentView.swift
//  MAPD724_Group4_Slotmachin
//
//  Date: 2022-01-23
//
//Authors: Ridham Patel (301207688)
//         Shrinal Patel (301204864)
//         Pushparaj Sanjeevan (301213104)
//

import SwiftUI

struct ContentView: View {
    
    private var slots = ["slot1", "slot2", "slot3"]
    
    @State private var betCoins = 10
    @State private var jackpot = 100
    @State private var numbers = [1, 2, 0]
    @State private var coins = 5000
    @State private var wins = 0
    @State private var losses = 0
    @State private var winRatio: Float = 0
    
    var body: some View {
        NavigationView{
        ZStack{
            
            // Backgroung Image
            
            Image("Jackpot1").resizable().ignoresSafeArea()
            
            VStack{
               HStack{
                    VStack{
                        //Spacer()
                        HStack{
                            
                        // Tracking wins and losses
                            
                        Text("   Wins:").foregroundColor(Color.white)
                        Text(String(wins)).foregroundColor(Color.white)
                        }.padding(.bottom, 1.0)
                        HStack{
                        Text("Losses:").foregroundColor(Color.white)
                        Text(String(losses)).foregroundColor(Color.white)
                        }
                        .padding(.bottom, 1.0)
                        HStack{
                        Text("Win Ratio:").foregroundColor(Color.white)
                            Text(String(self.winRatio) + " %").foregroundColor(Color.white)
                        }
                     }
                    Spacer()
                   
                   // Displaying Jackpot to win
                   
                   Text("Win Jackpot").font(.largeTitle).fontWeight(.bold).foregroundColor(Color.white)
                   Text(String(self.betCoins*10) + "!!").font(.largeTitle).fontWeight(.bold).foregroundColor(Color.white)
                  
                       
                    Spacer()
                   HStack{
                   Image("money").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fit).frame(width: 50.0, height: 50.0)
                       Text(String(coins))
                           .font(.largeTitle)
                           .fontWeight(.heavy)
                           .foregroundColor(Color.white)
                   }
                }
                Spacer()
                HStack{
                    Button(action:{
                        self.wins = 0
                        self.losses = 0
                        self.winRatio = 0
                        self.coins = 5000
                        self.betCoins = 10
                    })
                    
                    //Resetting the game
                    
                    {
                    Image("reset").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fit).frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                    Image(slots[numbers[0]]).resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fit).background(Color.white.opacity(0.9)).frame(width: 175.0, height: 175.0).cornerRadius(20)
                    Image(slots[numbers[1]]).resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fit).background(Color.white.opacity(0.9)).frame(width: 175.0, height: 175.0).cornerRadius(20)
                    Image(slots[numbers[2]]).resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fit).background(Color.white.opacity(0.9)).frame(width: 175.0, height: 175.0).cornerRadius(20)
                    Spacer()
                    
                    // Spin Button
                    Button(action: {
                        
                        // Changing the images
                        self.numbers[0] = Int.random(in: 0...self.slots.count - 1)
                        
                        self.numbers[1] = Int.random(in: 0...self.slots.count - 1)
                        
                        self.numbers[2] = Int.random(in: 0...self.slots.count - 1)
                        
                        
                        // Checking Wins and Losses
                        
                        if self.numbers[0] == self.numbers[1] && self.numbers[1] == self.numbers[2]
                        {
                            // Won
                            self.coins += self.betCoins * 10
                            self.wins += 1
                        }
                        
                        // Lost
                        else {
                            self.coins -= self.betCoins
                            self.losses += 1
                        }
                        
                        self.winRatio = Float(self.wins * 100 / (self.losses + self.wins))
                            
                    })
                    {
                        Image("spin").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fit).frame(width: 100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0)
                    }
                    
                }
                HStack{
                    Text("BET: ").font(.largeTitle).fontWeight(.medium).foregroundColor(Color.white)
                    
                    Image("money").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fit).frame(width: 30.0, height: 30.0)
                    
                    Text(String(betCoins)).font(.largeTitle).fontWeight(.medium).foregroundColor(.white)
                    
                    Spacer()
                    
                    // Betting options
                    
                    Button(action:{
                        self.betCoins = 5
                    })
                    {
                    Text("5").font(.title).fontWeight(.bold).foregroundColor(Color(red: 8/255, green: 98/255, blue: 32/255)).padding(5).padding(.horizontal, 10).background(Color.yellow).cornerRadius(20)
                    }
                    
                    Button(action:{
                        self.betCoins = 10
                    })
                    {
                    Text("10").font(.title).fontWeight(.bold).foregroundColor(Color(red: 8/255, green: 98/255, blue: 32/255)).padding(5).padding(.horizontal, 10).background(Color.yellow).cornerRadius(20)
                    }
                    
                    Button(action:{
                        self.betCoins = 100
                    })
                    {
                    Text("100").font(.title).fontWeight(.bold).foregroundColor(Color(red: 8/255, green: 98/255, blue: 32/255)).padding(5).padding(.horizontal, 10).background(Color.yellow).cornerRadius(20)
                    }
                    
                    Button(action:{
                        self.betCoins = 1000
                    })
                    {
                    Text("1000").font(.title).fontWeight(.bold).foregroundColor(Color(red: 8/255, green: 98/255, blue: 32/255)).padding(5).padding(.horizontal, 10).background(Color.yellow).cornerRadius(20)
                    }
                    
                    Spacer()
                    
                    // Quit Game
                    NavigationLink(destination: QuitConfirmation())
                    {
                        Image("quit").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fit).frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    }
                    
                    
                }
                Spacer()
              
               
            }
        }
       
    }.navigationViewStyle(StackNavigationViewStyle())
    
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Landscape Mode
        
        ContentView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
