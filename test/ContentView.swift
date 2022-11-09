//
//  ContentView.swift
//  test
//
//  Created by Omnya Kamal  on 24/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card9"
    @State private var CpuCard = "card10"
    @State private var PlayesrScore = 0
    @State private var CpuScore = 0
    var body: some View {
        
//WAR game
        ZStack {
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(CpuCard)
                    Spacer()
                }//Hstack
                Spacer()
                
                Button(action: {
                    //generate randome num between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let CpuRand = Int.random(in: 2...14)
                    // updating the cards:
                    playerCard="card" + String(playerRand)
                    CpuCard="card" + String(CpuRand)
                    
                    if (playerCard > CpuCard){
                        PlayesrScore+=1
                    }else if(playerCard < CpuCard){
                        CpuScore+=1
                    }else{
                        
                    }
                }, label: {Image("dealbutton")})
                
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        Text(String(PlayesrScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }//Vstack
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        Text(String(CpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        
                }//Vstack
                    Spacer()
                
                }//Hstack
                Spacer()
                
            }//Vstack
        }
        
    }//contentView
    
}//View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

