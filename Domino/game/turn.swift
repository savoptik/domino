//
//  turn.swift
//  Domino
//
//  Created by Артём Семёнов on 12/09/2018.
//  Copyright © 2018 Артём Семёнов. All rights reserved.
//

import Foundation

public class turn {
    var status: Int
    
    public init() {
        self.status = 0
    }
    
    public func startTurn(g: game) {
        print("Начало игры \(g.name) ")
        self.status = 1
    }
    
    public func fineshGame() {
        print("игра окончена")
        self.status = 2
    }
    
    public func nextTurn(multP: multiPlayer, currentBord: game) {
        print("На столе костяжка \(currentBord.inBord.left):\(currentBord.inBord.right)")
        print("Ход делает игрок \(multP.players[multP.turnIndex].name)")
    }
}
