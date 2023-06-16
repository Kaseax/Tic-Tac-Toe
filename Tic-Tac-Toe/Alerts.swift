//
//  Alerts.swift
//  Tic-Tac-Toe
//
//  Created by Fynn Bauer on 16.06.23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    var title: Text
    var message: Text
    var buttonTitle: Text
}

struct AlertContext {
    static let humanWin = AlertItem(title: Text("You Win!"),
                                    message: Text("You're the winner! Good Game!"),
                                    buttonTitle: Text("OK"))
    
    static let computerWin = AlertItem(title: Text("You lost..."),
                                       message: Text("You're just lost.. Try it again!"),
                                       buttonTitle: Text("Try again"))
    
    static let draw = AlertItem(title: Text("Draw!"),
                                message: Text("What a Battle! Try it again!"),
                                buttonTitle: Text("Try again"))
}
