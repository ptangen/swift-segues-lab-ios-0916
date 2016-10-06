//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    @IBOutlet var tableView1: UITableView!
    
    var animals = ["Dog", "Cat", "Mouse", "Hamster", "Bunny", "Panda", "Lion", "Pig", "Frog", "Octopus"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        let itemTitle = animals[indexPath.row]
        cell.textLabel?.text = itemTitle // its ok to force unwrap a UI element
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AnimalDetailView" {
            let destinationViewController = segue.destination as! AnimalViewController
            let selectedIndex = self.tableView.indexPathForSelectedRow?.row
            
            if let selectedIndex = selectedIndex {
                destinationViewController.incomingAnimal = self.animals[selectedIndex]
            }
        }
    }
}
