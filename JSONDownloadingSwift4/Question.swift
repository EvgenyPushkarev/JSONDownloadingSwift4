//
//  Question.swift
//  JSONDownloadingSwift4
//
//  Created by alekSANdr on 26/09/2018.
//  Copyright © 2018 alekSANdr. All rights reserved.
//

import UIKit

class Questions: Codable {
    let items: [Question]
    
    init(items: [Question]) {
        self.items = items
    }
}

class Question: Codable {
    let title: String
    
    init (title: String) {
        self.title = title
    }
}
