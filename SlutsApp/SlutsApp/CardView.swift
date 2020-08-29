//
//  CardView.swift
//  SlutsApp
//
//  Created by Tianhui Zhou on 8/28/20.
//  Copyright © 2020 Tianhui Zhou. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    var num: Int
    var backgoundColor = Color.white
    
    var body: some View {
        Image("icon\(num)")
        .resizable()
        .aspectRatio(1, contentMode: .fit)
        .background(backgoundColor.opacity(0.4))
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(num: 1, backgoundColor: Color.white)
    }
}
