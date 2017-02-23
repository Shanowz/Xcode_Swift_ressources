//
//  PasCustomTableViewCell.swift
//  table_views
//
//  Created by student5302 on 23/02/17.
//  Copyright © 2017 student5302. All rights reserved.
//

import UIKit

class PasCustomTableViewCell: UITableViewCell {
    static let identifier = "pasCustomCellIdentifier"
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
