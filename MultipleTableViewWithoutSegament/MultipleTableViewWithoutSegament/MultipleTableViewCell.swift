//
//  MultipleTableViewCell.swift
//  MultipleTableViewWithoutSegament
//
//  Created by trainee on 12/09/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class MultipleTableViewCell: UITableViewCell {
    @IBOutlet weak var lblTeam: UILabel!
    
    @IBOutlet weak var lblPlayer: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
