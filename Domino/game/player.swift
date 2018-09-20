//
//  player.swift
//  Domino
//
//  Created by Артём Семёнов on 11/09/2018.
//  Copyright © 2018 Артём Семёнов. All rights reserved.
//

import Foundation

public class playr{
    public let name: String
    var Dominos: [bone] = []
    
    // принимаем в конструкторе имя игорька
    public init(playerName: String) {
        // записываем его в приватное поле
        self.name = playerName
    }
    
    // метод принимает объект "базара" и берёт из него костяшку
    public func askForBone(bones: setOfBones) {
        // получаем нечто из "Базара
        let b = bones.takeKnuckle()
        // проверяем, что там пришло, если не nill
        if b != nil {
            // берём костяшку
            Dominos.append(b!)
        }
    }
    
    // метод получает варианты того, что требуется положить
    public func takeKnuckle(left: Int, right: Int) -> bone? {
        var indicesOfMatchingTiles: [Int] = []
        // проверяем, есть ли игроку чего давать?
        if Dominos.count == 0 {
            return nil
        }
        // собираем индексы подходящих костяшек
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
        // если нет подходящих костяшек, возвращаем nill
        if indicesOfMatchingTiles.isEmpty {
            return nil
        }
        var resultIndex: Int = 0
        var maxSum: Int = 0
        // выбираем костяжку, от которой больше всего хотим избавиться
        for i in 0...indicesOfMatchingTiles.count-1 {
            if (Dominos[indicesOfMatchingTiles[i]].left + Dominos[indicesOfMatchingTiles[i]].right) > maxSum {
                resultIndex = indicesOfMatchingTiles[i]
                maxSum = Dominos[indicesOfMatchingTiles[i]].left + Dominos[indicesOfMatchingTiles[i]].right
            }
        }
        // извлекаем её из своего набора
        let res: bone = Dominos[resultIndex]
        Dominos.remove(at: resultIndex)
        return res
    }
    
    public func minBone() -> bone {
        var minSum = Dominos[0].left + Dominos[0].right
        var returnIndex = 0
        for i in 0...Dominos.count-1 {
            if (Dominos[i].left + Dominos[i].right) < minSum {
                returnIndex = i
                    minSum = Dominos[i].left + Dominos[i].right
            }
        }
        let returnBone = Dominos[returnIndex]
        Dominos.remove(at: returnIndex)
        return returnBone
    }
    
    public func askForBone(bone: bone) {
        Dominos.append(bone)
    }
    
    public func empty() -> Bool {
        if Dominos.count == 0 {
            return true
        } else {
            return false
        }
    }
}
