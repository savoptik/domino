//
//  multiPlaer.swift
//  Domino
//
//  Created by Артём Семёнов on 12/09/2018.
//  Copyright © 2018 Артём Семёнов. All rights reserved.
//

import Foundation

public class multiPlayer {
    var players: [playr] = []
    var turnIndex: Int = 0
    public init(namePlayers: [String]) {
        for i in 0...namePlayers.count-1 {
            players.append(playr(playerName: namePlayers[i]))
        }
    }
    
    public func pushTurn() {
        if self.turnIndex == players.count-1 {
            self.turnIndex = 0
        } else {
            self.turnIndex += 1
        }
    }
    
    public func playersNoEmpty() -> Int {
        var result: Int = 0
        for i in 0...players.count-1 {
            if self.players[i].Dominos.count == 0 {
                result += 1
            }
        }
        return result
    }
}
