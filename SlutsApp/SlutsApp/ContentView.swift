//
//  ContentView.swift
//  SlutsApp
//
//  Created by Tianhui Zhou on 8/27/20.
//  Copyright © 2020 Tianhui Zhou. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numArr = [1, 2, 3]
    @State private var score = 1000
    
    var body: some View {
        ZStack{
            Image("Breakfast")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                HStack{
                    Image(systemName: "star.circle.fill").font(.system(size: 40, weight: .regular)).foregroundColor(.orange)
                    
                    Text("Slots")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    
                    Image(systemName: "star.circle.fill").font(.system(size: 40, weight: .regular)).foregroundColor(.orange)
                }
                
                Text("Score: \(score)")
                    .font(.headline)
                    .foregroundColor(Color.white)
                
                
                Spacer()
                HStack{
                    Image("icon\(numArr[0])")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.4))
                        .cornerRadius(20)
                    
                    Image("icon\(numArr[1])")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.4))
                        .cornerRadius(20)
                    
                    Image("icon\(numArr[2])")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.4))
                        .cornerRadius(20)
                    
                }.padding(20)
                Button(action: {
                    let randomNumber1 = Int.random(in: 1...3)
                    
                    let randomNumber2 = Int.random(in: 1...3)
                    
                    let randomNumber3 = Int.random(in: 1...3)
                    
                    self.numArr[0] = randomNumber1
                    self.numArr[1] = randomNumber2
                    self.numArr[2] = randomNumber3
                    
                    self.countResult(num1: randomNumber1, num2: randomNumber2, num3: randomNumber3)
                }) {
                    Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .background(Color.red)
                }
                Spacer()
            }
        }
    }
    
    func countResult(num1: Int, num2: Int, num3: Int) -> Void {
        
        if num1 == num2 && num1 == num3 {
            self.score += 100
        }
        
        return
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
