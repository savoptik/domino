//
//  player.swift
//  Domino
//
//  Created by Артём Семёнов on 11/09/2018.
//  Copyright © 2018 Артём Семёнов. All rights reserved.
//

import Foundation

public class playr: setOfBones {
    let name: String
    
    public override init(playerName: String) {
        self.name = playerName
    }
    
    public func askForBone(bones: setOfBones) {
        Dominos.append(bones.takeKnuckle())
    }
    
    public override func takeKnuckle(left: Int, right: Int) -> bone? {
        var indicesOfMatchingTiles: [Int] = []
        for i in 0...Dominos.count-1 {
            if Dominos[i].left == left {
                indicesOfMatchingTiles.append(i)
            } else if Dominos[i].right == left {
                indicesOfMatchingTiles.append(i)
            } else if Dominos[i].left == right {
                indicesOfMatchingTiles.append(i)
            } else if Dominos[i].right == right {
                indicesOfMatchingTiles.append(i)
            }
        }
        if indicesOfMatchingTiles.isEmpty {
            return nil
        }
        var resultIndex: Int
        var maxSum: Int = 0
        for i in 0...indicesOfMatchingTiles.count-1 {
            if (Dominos[indicesOfMatchingTiles[i]].left + Dominos[indicesOfMatchingTiles[i]]) > maxSum {
                resultIndex = indicesOfMatchingTiles[i]
                maxSum = Dominos[indicesOfMatchingTiles[i]].left + Dominos[indicesOfMatchingTiles[i]].right
            }
        }
        let res: bone = Dominos[resultIndex]
        Dominos.remove(at: resultIndex)
        return res
    }
}
