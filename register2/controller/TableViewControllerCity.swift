//
//  TableViewControllerCity.swift
//  register2
//
//  Created by hoanganh on 4/24/19.
//  Copyright © 2019 hoanganh. All rights reserved.
//

import UIKit

class TableViewControllerCity: BaseTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        dislayPlace = DataService.shared.dataCities
    }

    // MARK: - Table view data source
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? TableViewControllerDisticts
        if let index = tableView.indexPathForSelectedRow {
            DataService.shared.selectedCity = DataService.shared.dataCities[index.row]
        }
    }
    

}
