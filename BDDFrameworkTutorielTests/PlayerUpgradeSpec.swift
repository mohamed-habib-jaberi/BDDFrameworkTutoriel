//
//  PlayerUpgradeSpec.swift
//  BDDFrameworkTutorielTests
//
//  Created by mohamed  habib on 14/08/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import Foundation
@testable import BDDFrameworkTutoriel
import Nimble
import Quick

class PlayerUpgradeSpec: QuickSpec {
    
    override func spec() {
        
        var player: Player!
        var upgrader: PlayerUpgrader!
        
        beforeEach {
            
            player = Player()
            upgrader = PlayerUpgrader(player: player)
        }
        
        describe(".upgradeLives()") {
            
            func expectUser(toHaveLives expectedLives: Int, afterUpgradeLives upgradeLives: Int)  {
                try? upgrader.upgradeLives(by: upgradeLives)
                expect(player.lives).to(equal(expectedLives))
            }
            
            context("When the player has no lives") {
                
                context("with an upgrade amount of 0") {
                    it("Should increment the player's live by 0") {
                        
                        try? upgrader.upgradeLives(by: 0)
                        expect(player.lives).to(equal(0))
                    }
                }
                
                context("With an upgrade amount that is less than the maximum lives") {
                    it("should increment the player'lives by upgrade amount") {
                        
                       expectUser(toHaveLives: 1, afterUpgradeLives: 1)
                        
                    }
                }
            }
            
            context("When the player's lives are full") {
                beforeEach {
                    try? upgrader.upgradeLives(by: Player.maximumLives)
                    
                }
                
                it("should not change the value of the player's lives") {
                  
                    expectUser(toHaveLives: Player.maximumLives, afterUpgradeLives: 1)
                }
            }
        }
    }
}
