//
//  DramaTableViewCell.swift
//  MovieListApp
//
//  Created by Shun-Ching, Chou on 2019/4/11.
//  Copyright © 2019 Shun-Ching, Chou. All rights reserved.
//

import UIKit

class DramaTableViewCell: UITableViewCell {

    @IBOutlet weak var dramaImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
