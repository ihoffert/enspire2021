//
//  Tasks.swift
//  enspire2021
//
//  Created by Ingrid Hoffert on 7/21/21.
//  Copyright © 2021 Ingrid Hoffert. All rights reserved.
//

import Foundation

class TasksToDo : Equatable {
    static func == (lhs: TasksToDo, rhs: TasksToDo) -> Bool {
        return lhs.name == rhs.name
    }
    
    var name = ""
    var completed = false
    var badge = ""
}
