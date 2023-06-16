//
//  ContentView.swift
//  Tic-Tac-Toe
//
//  Created by Fynn Bauer on 16.06.23.
//

import SwiftUI

struct ContentView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    @State private var moves: [Move?] = Array(repeating: nil, count: 9)
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                LazyVGrid(columns: columns, spacing: 5) {
                    ForEach(0..<9) { i in
                        ZStack {
                            Circle()
                            //TODO: Optionally Change color
                                .foregroundColor(.blue).opacity(0.5)
                                .frame(width: geometry.size.width/3 - 15,
                                       height: geometry.size.width/3 - 15)
                            
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 40, height: 40)
                            //TODO: Optionally change color
                                .foregroundColor(.white)
                        }
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

enum Player {
    case human, computer
}

struct Move {
    let player: Player
    let boardIndex: Int
    
    var indicator: String {
        return player == .human ? "xmark" : "circle"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
