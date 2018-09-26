//
//  Question.swift
//  JSONDownloadingSwift4
//
//  Created by alekSANdr on 26/09/2018.
//  Copyright © 2018 alekSANdr. All rights reserved.
//

import UIKit

class Question: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
