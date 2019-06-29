//
//  TodoItem.swift
//  MyTodo1
//
//  Created by Vincent on 2019/6/29.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

class TodoItem: NSObject {
    var id:String
    var image:String
    var title:String
    var date:Date
    
    init(id: String, image: String, title: String, date: Date) {
        self.id = id
        self.image = image
        self.title = title
        self.date = date
    }
}


