//
//  TableViewController.swift
//  PizzaDelivery
//
//  Created by Ryo Togashi on 2019-08-27.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var pizzaList: [Pizza] = [
        Pizza(name:"hawaian", photo: UIImage(named: "pizza1")!, price: 5),
        Pizza(name:"margelita", photo: UIImage(named: "pizza2")!, price: 2),
        Pizza(name:"duabolo", photo: UIImage(named: "pizza3")!, price: 7)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizzaList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pizzaCell", for: indexPath)
        let pizza = pizzaList[indexPath.row]
        
        cell.textLabel?.text = pizza.name
        cell.detailTextLabel?.text = String(pizza.price)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pizzaDetail" {
            let destVC = segue.destination as! ViewController
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                destVC.pizzaDetail = pizzaList[selectedIndexPath.row]
            }
        }
    }
}
