//
//  ViewController.swift
//  PizzaDelivery
//
//  Created by Ryo Togashi on 2019-08-27.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pizzaDetail: Pizza?

    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageLabel.image = pizzaDetail?.photo
        nameLabel.text = pizzaDetail?.name
        priceLabel.text = String(pizzaDetail!.price)
    }


}

