//
//  MovieTableViewCell.swift
//  Movie
//
//  Created by admin on 9/24/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
import Cosmos
class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var viewColor: UIView!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var rateView: CosmosView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
//    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
//        viewColor.backgroundColor = highlighted ? UIColor(red: 63/255, green: 95/255, blue: 163/255, alpha: 1): UIColor.white
//    }
    
}
