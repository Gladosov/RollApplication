//
//  ContentView.swift
//  DiceRollSwiftUI
//
//  Created by Admin on 16.04.2021.
//  
//

import SwiftUI

struct ContentView: View {

    // Property Wrapper - @State
    @State var leftDiceIndex = 1
    @State var rightDiceIndex = 1

    let imageIndexRange: ClosedRange = 1...6

    var body: some View {
        ZStack {
            Image(Constants.backgroundImageName)
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(Constants.logoImageName)
                Spacer()
                HStack {
                    DiceView(imageIndex: "\(leftDiceIndex)")
                    DiceView(imageIndex: "\(rightDiceIndex)")
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceIndex = Int.random(in: self.imageIndexRange)
                    self.rightDiceIndex = Int.random(in: self.imageIndexRange)
                }) {
                    Text(Constants.rollButtonTitleText)
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }.background(Color.red)
                .cornerRadius(20.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let imageIndex: String

    var body: some View {
        Image("\(Constants.diceImageNamePrefix)\(imageIndex)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
func shake()-> Int{
    // idk how to do that i tried but
    // i can't do shake for Dice
    return 0
}
