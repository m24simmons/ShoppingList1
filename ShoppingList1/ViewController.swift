//
//  ViewController.swift
//  ShoppingList1
//
//  Created by Student on 7/23/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var shoppingTableView: UITableView!
    
    let items = ["apples","bananas","grapes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shoppingTableView.dataSource = self
        
    }
       func tableView(_ tableView: UITableView,
                      numberOfRowsInSection section: Int) -> Int {
           return items.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
           cell.textLabel?.text = items[indexPath.row]
           return cell
       }


}

