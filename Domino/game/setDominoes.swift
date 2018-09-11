//
//  setDominoes.swift
//  Domino
//
//  Created by Артём Семёнов on 11/09/2018.
//  Copyright © 2018 Артём Семёнов. All rights reserved.
//

import Foundation

public class setOfBones {
    var Dominos: [bone]
    
    public init() {
        let ziro = bone(0, 0)
        Dominos.append(ziro)
        for i in 0...6 {
            for j in i...6 {
                Dominos.append(bone(i, j))
            }
        }
    }
    
    public func takeKnuckle() -> bone? {
        if Dominos.count == 0 {
            return nil
        }
        let number = arc4random_uniform(Dominos.count - 1)
        let returnBone: bone = Dominos[number]
        Dominos.remove(at: number)
        return returnBone
    }
}
