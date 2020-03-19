//
//  ShopTableViewCell.swift
//  pacificStadiumFood
//
//  Created by 勝山翔紀 on 2019/09/20.
//  Copyright © 2019 勝山翔紀. All rights reserved.
//

import UIKit

class ShopTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var shopImage: UIImageView!
    @IBOutlet weak var shopName: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
