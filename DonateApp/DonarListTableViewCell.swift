//
//  DonarListTableViewCell.swift
//  DonateApp
//
//  Created by Kvana iOS Dev on 6/7/17.
//  Copyright © 2017 Narendra. All rights reserved.
//

import UIKit

class DonarListTableViewCell: UITableViewCell {

    @IBOutlet weak var donarImage: UIImageView!
    @IBOutlet weak var fullNameLabel: UILabel!
     @IBOutlet weak var mobileNumberLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
 

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
