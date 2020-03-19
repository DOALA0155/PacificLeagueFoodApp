//
//  SelectedTableViewCell.swift
//  pacificStadiumFood
//
//  Created by 勝山翔紀 on 2019/09/22.
//  Copyright © 2019 勝山翔紀. All rights reserved.
//

import UIKit

class SelectedTableViewCell: UITableViewCell {

    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var categoryName: UILabel!
    @IBOutlet weak var priceNumber: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        foodName.numberOfLines = 0
        categoryImage.layer.cornerRadius = 20
        categoryImage.layer.masksToBounds = true
        categoryImage.layer.borderWidth = 1
        categoryImage.layer.borderColor = UIColor.black.cgColor
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
