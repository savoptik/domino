//
//  turn.swift
//  Domino
//
//  Created by Артём Семёнов on 12/09/2018.
//  Copyright © 2018 Артём Семёнов. All rights reserved.
//

import Foundation

public class turn {
    var status = 0
    
    public func startTurn(g: game) {
        print("Начало игры \(g.name) \n")
        self.status = 1
    }
    
    public func fineshGame() {
        print("игра окончена")
        self.status = 3
    }
    
    public func nextTurn(multP: multiPlayer, currentBord: game) {
        print("На столе костяжка \(currentBord.inBord.left):\(currentBord.inBord.right)\n")
        print("Ход делает игрок \(multP.players[multP.turnIndex].name)\n")
         let b = multP.players[multP.turnIndex].takeKnuckle(left: currentBord.inBord.left, right: currentBord.inBord.right)
        print("\(multP.players[multP.turnIndex].name) кладёт \(b?.left) - \(b?.right)\n")
        if b?.left == currentBord.inBord.left {
            currentBord.inBord.left = b?.right
        } else if b?.right == currentBord.inBord.left {
            currentBord.inBord.left = b?.right
        } else if b?.left == currentBord.inBord.right {
            currentBord.inBord.right = b?.right
        } else if b?.right == currentBord.inBord.right {
            currentBord.inBord.right = b?.left
        }
    }
}
