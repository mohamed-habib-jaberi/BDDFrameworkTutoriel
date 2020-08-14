//
//  BDDFrameworkTutorielTests.swift
//  BDDFrameworkTutorielTests
//
//  Created by mohamed  habib on 14/08/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import XCTest
@testable import BDDFrameworkTutoriel

class BDDFrameworkTutorielTests: XCTestCase {
    
    var upgrader: PlayerUpgrader!
    var player: Player!

    override func setUp() {
    
        player = Player()
        upgrader = PlayerUpgrader(player: player)
    }

     // MARK: Player Lives
    func test_addMoreLivesWith0Lives_Adds0NewLivesToPlayer() {
      try? upgrader.upgradeLives(by: 0)
      XCTAssertEqual(player.lives, 0)
    }
    
    func test_addMoreLivesWithXLives_AddsXNumberOfLivesToPlayer_WhenPlayerStartsWithNoLives() {
       try? upgrader.upgradeLives(by: 1)
       XCTAssertEqual(player.lives, 1)
     }
     
     func test_addMoreLivesWithNegativeLives_ThrowsAnError() {
       XCTAssertThrowsError(try upgrader.upgradeLives(by: -1))
     }
     
     func test_addMoreLivesWithMoreThanMaximumNumberLives_SetsPlayersLivesToMaximumNumberOfLives_WhenPlayerStartsWithNoLives() {
       try? upgrader.upgradeLives(by: Player.maximumLives+1)
       XCTAssertEqual(player.lives, Player.maximumLives)
     }
     
     func test_addMoreLives_SetsPlayersLivesToMaximumNumberOfLives_WhenPlayerStartsWithMaximumLives() {
       try? upgrader.upgradeLives(by: 1)
       try? upgrader.upgradeLives(by: 1)
       try? upgrader.upgradeLives(by: 1)
       try? upgrader.upgradeLives(by: 1)
       XCTAssertEqual(player.lives, Player.maximumLives)
     }
    
    

    

}
