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
    
    public init(playerName: String) {
        self.name = playerName
    }
    
    public func askForBone(bones: setOfBones) {
        let b = bones.takeKnuckle()
        if b != nil {
            Dominos.append(b!)
        }
    }
    
    public func takeKnuckle(left: Int, right: Int) -> bone? {
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
        var resultIndex: Int = 0
        var maxSum: Int = 0
        for i in 0...indicesOfMatchingTiles.count-1 {
            if (Dominos[indicesOfMatchingTiles[i]].left + Dominos[indicesOfMatchingTiles[i]].right) > maxSum {
                resultIndex = indicesOfMatchingTiles[i]
                maxSum = Dominos[indicesOfMatchingTiles[i]].left + Dominos[indicesOfMatchingTiles[i]].right
            }
        }
        let res: bone = Dominos[resultIndex]
        Dominos.remove(at: resultIndex)
        return res
    }
}
