//
//  FeatureCellViewController.swift
//  pacificStadiumFood
//
//  Created by 勝山翔紀 on 2019/09/24.
//  Copyright © 2019 勝山翔紀. All rights reserved.
//

import UIKit

class FeatureCellViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var shop: Array<Any> = []
    var selectedFoodsList: Array<Any> = []
    @IBOutlet weak var selectedShopMenu: UITableView!
    @IBOutlet weak var selectedImage: UIImageView!
    @IBOutlet weak var selectedShopName: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedShopMenu.rowHeight = UITableView.automaticDimension
        selectedShopMenu.dataSource = self
        selectedShopMenu.delegate = self
        selectedShopMenu.register(UINib(nibName: "SelectedTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectedTableViewCell")
        
        selectedShopName.text = (shop[0] as! String)
        selectedImage.image = (shop[1] as! UIImage)
        areaLabel.text = (shop[3] as! String)
        selectedFoodsList = (shop[2] as! Array)
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedFoodsList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SelectedTableViewCell", for: indexPath) as! SelectedTableViewCell
        var shop = selectedFoodsList[indexPath.row] as! Array<Any>
        cell.foodName.text = (shop[0] as! String)
        cell.priceNumber.text = (shop[1] as! String) + "円"
        cell.categoryName.text = (shop[2] as! String)
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
