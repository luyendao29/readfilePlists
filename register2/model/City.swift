//
//  City.swift
//  register2
//
//  Created by hoanganh on 4/24/19.
//  Copyright © 2019 hoanganh. All rights reserved.
//

import UIKit
class City : Namedable{
    var cityCode: Int
    var name: String
    
    init?(dictionary: DICT) {
        guard let cityCode = dictionary["CityCode"] as? Int else { return nil }
        guard let name = dictionary["Name"] as? String else { return nil }
        self.cityCode = cityCode
        self.name = name
    }
}

protocol Namedable {
    var name: String {get set}
}
