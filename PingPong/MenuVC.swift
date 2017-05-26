//
//  MenuVC.swift
//  PingPong
//
//  Created by Antonis Vozikis on 26/05/2017.
//  Copyright © 2017 Antonis Vozikis. All rights reserved.
//

import Foundation
import UIKit

enum gameType {
    case easy
    case medium
    case hard
    case player2
}

class MenuVC : UIViewController
{
    
    @IBAction func Player2(_ sender: Any) {
        moveTogame(game: .player2)
    }
    
    @IBAction func Easy(_ sender: Any) {
        moveTogame(game: .easy)
    }
    
    @IBAction func Medium(_ sender: Any) {
        moveTogame(game: .medium)
    }
    
    @IBAction func Hard(_ sender: Any) {
        moveTogame(game: .hard)
    }
    
    func moveTogame(game : gameType) {
        let gameVC = self.storyboard?.instantiateViewController(withIdentifier: "gameVC") as! GameViewController
        currentGameType = game
        self.navigationController?.pushViewController(gameVC, animated: true)
        
    }
    
    
}
