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
    let right: Int
    let left: Int
    
    public init(leftValue: Int, rightValue: Int) {
        self.left = leftValue
        self.right = rightValue
}
}


