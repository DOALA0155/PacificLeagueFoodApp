//
//  SelectTeamViewController.swift
//  pacificStadiumFood
//
//  Created by 勝山翔紀 on 2019/09/22.
//  Copyright © 2019 勝山翔紀. All rights reserved.
//

import UIKit

class SelectTeamViewController: UIViewController {

    @IBOutlet weak var sapporoButton: UIButton!
    @IBOutlet weak var rakutenButton: UIButton!
    @IBOutlet weak var seibuButton: UIButton!
    @IBOutlet weak var marinButton: UIButton!
    @IBOutlet weak var kyoseraButton: UIButton!
    @IBOutlet weak var yafuokuButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        sapporoButton.layer.cornerRadius = 30
        sapporoButton.layer.masksToBounds = true
        rakutenButton.layer.cornerRadius = 30
        rakutenButton.layer.masksToBounds = true
        seibuButton.layer.cornerRadius = 30
        seibuButton.layer.masksToBounds = true
        marinButton.layer.cornerRadius = 30
        marinButton.layer.masksToBounds = true
        kyoseraButton.layer.cornerRadius = 30
        kyoseraButton.layer.masksToBounds = true
        yafuokuButton.layer.cornerRadius = 30
        yafuokuButton.layer.masksToBounds = true

        // Do any additional setup after loading the view.
    }
    
    
        
//        else if segue.identifier == "toSeibu"{
//            var allShop: [Data] = []
//            let SeibuVC = segue.destination as! ShopViewController
//
//            allShop.append(shop)
//            SeibuVC.allShop = allShop
//        }
        
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


