//
//  ViewController.swift
//  Party Planner
//
//  Created by Kathryn Tatum on 3/9/20.
//  Copyright © 2020 Kathryn Tatum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyItems = ["Potato Chips",
    "Tortilla Chips",
    "Salsa",
    "Chili",
    "Punch",
    "Sudsy Beverages",
    "Brownies",
    "Cupcakes",
    "Fruit salad",
    "Ribs",
    "Corn bread",
    "Macaroni Salad",
    "Sandwich Rolls",
    "Roast Beef",
    "Ham",
    "Cheese",
    "Mayo",
    "Mustard",
    "Hummus",
    "Baby carrots",
    "Celery",
    "Veggie Dip",
    "Napkins",
    "Plates & Bowls",
    "Forks and Knives",
    "Cups"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = partyItems[indexPath.row] //important line
        return cell
    }
    
}
