//
//  ObjectDemo.swift
//  RealTimeDataBase
//
//  Created by Mobility User 1 on 10/11/22.
//

import Foundation


class ObjectDemo: Encodable, Decodable, Identifiable{
    var res_name: String = ""
    var res_location: String = ""
}


extension Encodable{
    var toDictionary: [String: Any]?{
        guard let data = try? JSONEncoder().encode(self) else {
            return nil
        }
        
        return try? JSONSerialization.jsonObject(with: data,options: .allowFragments) as? [String: Any]
    }
}
