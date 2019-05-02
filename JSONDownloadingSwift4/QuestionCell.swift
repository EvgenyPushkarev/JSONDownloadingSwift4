//
//  Question.swift
//  JSONDownloadingSwift4
//
//  Created by alekSANdr on 26/09/2018.
//  Copyright © 2018 alekSANdr. All rights reserved.
//

import UIKit

class QuestionCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
        
    @IBOutlet var imgView: UIImageView!
    
    @IBOutlet var AuthName: UILabel!
    
    @IBOutlet var DateModi: UILabel!
    
    @IBOutlet var AnsNumb: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
