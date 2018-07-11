//
//  EventsData.swift
//  El_Baat
//
//  Created by admin on 7/11/18.
//  Copyright © 2018 admin. All rights reserved.
//

import Foundation

class EventsData : NSObject {
    
    var title : String!
    var image : String!
    var date : String!
    var details : String!
    
    init(title : String , image :  String , date : String , details : String) {
        
        self.title = title
        self.image = image
        self.date = date
        self.details = details
    }
}
