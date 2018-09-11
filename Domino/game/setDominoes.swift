//
//  setDominoes.swift
//  Domino
//
//  Created by Артём Семёнов on 11/09/2018.
//  Copyright © 2018 Артём Семёнов. All rights reserved.
//

import Foundation

public class setOfBones {
    var Dominos: [bone] = []
    
    public init() {
        let doubleZero = bone(leftValue: 0, rightValue: 0)
        self.Dominos.append(doubleZero)
        for i in 0...5 {
            for j in i...6 {
                self.Dominos.append(bone(leftValue: i, rightValue: j))
            }
        }
        let doubleSix = bone(leftValue: 6, rightValue: 6)
        self.Dominos.append(doubleSix)
    }
    
    public func takeKnuckle() -> bone? {
        if Dominos.count == 0 {
            return nil
        }
        let number = arc4random_uniform(UInt32(Dominos.count))
        let returnBone: bone = Dominos[Int(number)]
        Dominos.remove(at: Int(number))
        return returnBone
    }
}
