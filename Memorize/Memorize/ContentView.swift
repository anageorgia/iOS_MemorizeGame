//
//  ContentView.swift
//  Memorize
//
//  Created by Ana Geórgia Gama on 06/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUP: false)
            }
        }
            // proprieties of the ContentView
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUP: Bool
    
    var body: some View {
        ZStack {
            if isFaceUP {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white) // Game background
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0) // Card background
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}






















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
