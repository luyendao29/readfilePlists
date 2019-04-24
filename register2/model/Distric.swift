
//
//  Districts.swift
//  register2
//
//  Created by hoanganh on 4/24/19.
//  Copyright © 2019 hoanganh. All rights reserved.
//

import Foundation
class Distric: Namedable {
    var cityCode : Int
    var districtCode : Int
    var name : String
    init?(dictionary: DICT) {
        
        guard let citiCode = dictionary["CityCode"] as? Int else { return nil }
        
        guard let districtCode = dictionary["DistrictCode"] as? Int else { return nil }
        guard let name = dictionary["Name"] as? String else { return nil }
        self.cityCode = citiCode
        self.districtCode = districtCode
        self.name = name
    }
}
