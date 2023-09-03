//
//  Item.swift
//  Citations
//
//  Created by deirdre on 9/3/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
