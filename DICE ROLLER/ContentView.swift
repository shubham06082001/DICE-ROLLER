//
//  ContentView.swift
//  DICE ROLLER
//
//  Created by SHUBHAM KUMAR on 21/12/20.
//

import SwiftUI

struct ContentView: View {
    @State var left = 1
    @State var right = 2
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: left)
                    DiceView(n: right)
                }
                Spacer()
                Button(action: {
                    self.left = Int.random(in: 1...6)
                    self.right = Int.random(in: 1...6)
                }) {
                    Text("ROLL")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .padding(.vertical)
                }
                .background(Color.red)
            }
        }
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit).frame(width: 150, height: 150)
            .padding(10)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


