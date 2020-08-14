//
//  PlayerUpgrader.swift
//  BDDFrameworkTutoriel
//
//  Created by mohamed  habib on 14/08/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import Foundation

class PlayerUpgrader {
  private let player: Player
  
  init(player: Player) {
    self.player = player
  }
  
  func upgradeLives(by lives: Int) throws {
    let totalLives = player.lives + lives
    try player.set(lives: min(totalLives, Player.maximumLives))
  }
  
  func upgradeLevel() {
//    player.set(levelsComplete: player.levelsComplete + 1)
  }
}
