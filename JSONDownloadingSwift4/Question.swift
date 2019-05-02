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
    let owner: Ownerr
    let last_edit_date: Int
    let answer_count: Int
    
    init (title: String, owner: Ownerr, last_edit_date: Int, answer_count: Int) {
        self.title = title
        self.owner = owner
        self.last_edit_date = last_edit_date
        self.answer_count = answer_count
    }
}

class Ownerr: Codable {
    let profile_image: String
    let display_name: String
    
    init (profile_image: String, display_name: String) {
        self.profile_image = profile_image
        self.display_name = display_name
    }
}
	
