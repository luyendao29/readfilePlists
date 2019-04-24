//
//  DataService.swift
//  register2
//
//  Created by hoanganh on 4/24/19.
//  Copyright © 2019 hoanganh. All rights reserved.
//

import UIKit

typealias DICT = Dictionary<AnyHashable, Any>
class DataService{
    static let shared: DataService = DataService()
    lazy var dataCities : [City] = {
        var result : [City] = []
       let arrayOfDict = getData(filename: "Cities")
        for item in arrayOfDict {
            if let city = City(dictionary: item) {
                result.append(city)
            }
        }
        return result
    }()
    
    lazy var dataDistrics : [Distric] = {
        var result : [Distric] = []
        let arrayOfDict = getData(filename: "Districts")
        for item in arrayOfDict {
            if let city = Distric(dictionary: item) {
                result.append(city)
            }
        }
        return result
    }()
    // lọc dữ liệu
    var selectedCity : City? {
        didSet {
            if selectedCity != nil {
                selectedDistricts = dataDistrics.filter{ $0.cityCode == selectedCity!.cityCode}
            }
        }
    }
    
    var selectedDistricts: [Distric] = []
   
    
    
    func getData(filename: String) -> [DICT]{
        // đường dẫn đến
        var result : [DICT] = []
        guard let plistPath = Bundle.main.path(forResource: filename, ofType: "plist") else { return [] }
        // đọc nội dung
        guard let plistData = FileManager.default.contents(atPath: plistPath) else { return  []}
        
        do {
            // đã lấy về được một cục dữ liệu
            guard let plistDict  = try  PropertyListSerialization.propertyList(from: plistData, options: .mutableContainersAndLeaves, format: nil)  as? DICT else { return []}
            
            guard let dictionaries = plistDict[filename] as? [DICT] else { return []}
            result = dictionaries
        } catch  {
            print("Error")
        }
        return result
    }
    
    
}
