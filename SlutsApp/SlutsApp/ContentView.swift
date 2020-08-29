//
//  ContentView.swift
//  SlutsApp
//
//  Created by Tianhui Zhou on 8/27/20.
//  Copyright © 2020 Tianhui Zhou. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numArr = [1, 2, 3, 1, 2, 3, 3, 2, 1]
    @State private var score = 1000
    @State private var backgroundColor = [Color.white, Color.white, Color.white, Color.white, Color.white, Color.white, Color.white, Color.white, Color.white]
    
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
                VStack{
                HStack{
                    CardView(num: numArr[0], backgoundColor: backgroundColor[0])
                    
                    CardView(num: numArr[1], backgoundColor: backgroundColor[1])
                    
                    CardView(num: numArr[2], backgoundColor: backgroundColor[2])
                    
                }.padding(.horizontal)
                HStack{
                    CardView(num: numArr[3], backgoundColor: backgroundColor[3])
                    
                    CardView(num: numArr[4], backgoundColor: backgroundColor[4])
                    
                    CardView(num: numArr[5], backgoundColor: backgroundColor[5])
                    
                }.padding(.horizontal)
                HStack{
                    CardView(num: numArr[6], backgoundColor: backgroundColor[6])
                    
                    CardView(num: numArr[7], backgoundColor: backgroundColor[7])
                    
                    CardView(num: numArr[8], backgoundColor: backgroundColor[8])
                    
                }.padding(.horizontal)
                }
                Button(action: {
                    
                    for color in 0 ... 8{
                    self.backgroundColor[color] = Color.white
                    }
                    for turn in 0 ... 8{
                        let ranNum = Int.random(in: 1...3)
                        self.numArr[turn] = ranNum
                    }
                    
                    
                    self.countResult(numArr: self.numArr)
                }) {
                    Text("Let roll!")
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .background(Color.red)
                }
                Spacer()
            }
        }
    }
    
    func countResult(numArr: [Int]) -> Void {
        
        if numArr[0] == numArr[1] && numArr[1] == numArr[2] {
            self.score += 100
            self.backgroundColor[0] = Color.green
            self.backgroundColor[1] = Color.green
            self.backgroundColor[2] = Color.green
        }
        
        if numArr[3] == numArr[4] && numArr[4] == numArr[5] {
            self.score += 100
            self.backgroundColor[3] = Color.green
            self.backgroundColor[4] = Color.green
            self.backgroundColor[5] = Color.green
        }
        
        if numArr[6] == numArr[7] && numArr[7] == numArr[8] {
            self.score += 100
            self.backgroundColor[6] = Color.green
            self.backgroundColor[7] = Color.green
            self.backgroundColor[8] = Color.green
        }
        
        return
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
