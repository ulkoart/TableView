//
//  ViewController.swift
//  TableView
//
//  Created by user on 25/11/2019.
//  Copyright © 2019 Artem Ulko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var cellList:[String] = ["Cell 1", "Cell 2", "Cell 3", "Cell 4", "Cell 5", "Cell 6"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cellList[indexPath.row]
        cell.detailTextLabel?.text = "detailTextLabel text"
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.lightGray
        }
        
        return cell
    }

}

