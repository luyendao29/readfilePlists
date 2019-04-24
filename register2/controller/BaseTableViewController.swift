//
//  BaseTableViewController.swift
//  register2
//
//  Created by hoanganh on 4/24/19.
//  Copyright © 2019 hoanganh. All rights reserved.
//

import UIKit

class BaseTableViewController: UITableViewController {
    var dislayPlace: [Namedable] = []
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dislayPlace.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dislayPlace[indexPath.row].name
        // Configure the cell...
        
        return cell
    }
    
}
