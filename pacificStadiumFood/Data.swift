//
//  Data.swift
//  pacificStadiumFood
//
//  Created by 勝山翔紀 on 2019/09/20.
//  Copyright © 2019 勝山翔紀. All rights reserved.
//

import UIKit

class Data: NSObject {
    var shopName: String
    var shopImage: UIImage
    var shopFoods: Array<Any>
    var shopArea: String
    
    
    init(shopName: String, shopImage: UIImage, shopFoods: Array<Any>, shopArea: String){
        self.shopName = shopName
        self.shopImage = shopImage
        self.shopFoods = shopFoods
        self.shopArea = shopArea
    }
}
