//
//  Player.swift
//  BDDFrameworkTutoriel
//
//  Created by mohamed  habib on 14/08/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import Foundation

enum PlayerError: Error {
  case invalidLives(Int)
  case invalidLevelsComplete(Int)
}

class Player {
  static let maximumLives = 3
  
  private var _lives = 0
  var lives: Int {
    return _lives
  }
  private var _levelsComplete = 0
  var levelsComplete: Int {
    return _levelsComplete
  }
  
  func set(lives: Int) throws {
    guard lives >= 0 else {
      throw PlayerError.invalidLives(lives)
    }
    _lives = lives
  }
  
  func set(levelsComplete: Int) {
    _levelsComplete = levelsComplete
  }
  
}
