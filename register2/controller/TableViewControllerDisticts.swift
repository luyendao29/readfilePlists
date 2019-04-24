//
//  TableViewController.swift
//  register2
//
//  Created by hoanganh on 4/24/19.
//  Copyright © 2019 hoanganh. All rights reserved.
//

import UIKit

class TableViewControllerDisticts: BaseTableViewController {
    var name: Int?
    var districtsData : [Distric] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        dislayPlace = DataService.shared.selectedDistricts
       
    }
}
