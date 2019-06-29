//
//  Utils.swift
//  MyTodo1
//
//  Created by Vincent on 2019/6/29.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

func dateFromString(_ date:String) -> Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    return dateFormatter.date(from:date)
}

func stringFromDate(_ date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    return dateFormatter.string(from: date)
}

