//
//  main.swift
//  Domino
//
//  Created by Артём Семёнов on 11/09/2018.
//  Copyright © 2018 Артём Семёнов. All rights reserved.
//

import Foundation

let names = ["Трус", "Балбес", "бывалый"]
let gameDomino: game = game.init(gName: "Новая игра", ps: multiPlayer.init(namePlayers: names))
gameDomino.play()

