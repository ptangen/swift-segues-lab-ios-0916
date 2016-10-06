//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    var incomingAnimal:String = ""
    
    @IBOutlet weak var detailLabel1: UILabel!
    
    @IBOutlet weak var detailLabel2: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        self.detailLabel1.text = getEmoji(nameis: incomingAnimal)
        self.detailLabel2.text = incomingAnimal
        
    }
    
    func getEmoji(nameis animalName: String) -> String {
        switch animalName {
        case "Dog": return "🐶"
        case "Cat": return "🐱"
        case "Mouse": return "🐭"
        case "Hamster": return "🐹"
        case "Bunny": return "🐰"
        case "Panda": return "🐼"
        case "Lion": return "🦁"
        case "Pig": return "🐷"
        case "Frog": return "🐸"
        case "Octopus": return "🐙"
        default: return "none"
        }
    }
    
}
