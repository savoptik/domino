//
//  bone.swift
//  Domino
//
//  Created by Артём Семёнов on 11/09/2018.
//  Copyright © 2018 Артём Семёнов. All rights reserved.
//

import Foundation

// Кость, имеет две стороны, инициируется двумя числами.
public class bone {
    let right: int
    let left: int
    
    public init(leftValue: int, rightValue: int) {
        self.left = leftValue
        self.right = rightValue
}
}

// набор костяшек, заполняется 28ю костями может выдавать одну случайную костяшку.
public class setOfBones {
    private var Dominos: [bone]
    
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
