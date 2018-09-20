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
        // заполняем "базар" костяшками, должно быть 28
        for i in 0...6 {
            for j in i...6 {
                self.Dominos.append(bone(leftValue: i, rightValue: j))
            }
        }
    }
    
    // метод выдаёт случайную костяшку
    public func takeKnuckle() -> bone? {
        // проверяем, остались ли ещё в "базаре" костяшки?
        if Dominos.count == 0 {
            return nil // возвращаем nill если базар пуст
        }
        // получаем индекс случайной костяшки
        let number = arc4random_uniform(UInt32(Dominos.count - 1))
        // копируем костяшку
        let returnBone: bone = Dominos[Int(number)]
        // удаляем вынутую костяшку из базара
        Dominos.remove(at: Int(number))
        // возвращаем костяшку
        return returnBone
    }
    
    public func empty() -> Bool {
        if Dominos.count == 0 {
            return true
        } else {
            return false
        }
    }
}
