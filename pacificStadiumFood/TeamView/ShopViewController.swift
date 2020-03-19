//
//  YafuokuViewController.swift
//  pacificStadiumFood
//
//  Created by 勝山翔紀 on 2019/09/20.
//  Copyright © 2019 勝山翔紀. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var allShop: [Data] = []
    
    

    @IBOutlet weak var shopList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        shopList.dataSource = self
        shopList.delegate = self
        shopList.register(UINib(nibName: "ShopTableViewCell", bundle: nil), forCellReuseIdentifier: "ShopTableViewCell")
        

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return allShop.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 950
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShopTableViewCell", for: indexPath) as! ShopTableViewCell
        
        cell.shopImage.image = allShop[indexPath.section].shopImage
        cell.shopName.text = allShop[indexPath.section].shopName
        cell.layer.cornerRadius = 50
        cell.layer.masksToBounds = true
        cell.areaLabel.text = allShop[indexPath.section].shopArea
        if (allShop[indexPath.section].shopArea).contains("ヤフオクドーム"){
            cell.shopName.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 0, alpha: 0.7)
            cell.areaLabel.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 0, alpha: 0.7)
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 30
    }
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        view.tintColor = UIColor.clear
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = UIColor.clear
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toCellView", sender: [allShop[indexPath.section].shopName, allShop[indexPath.section].shopImage, allShop[indexPath.section].shopFoods, allShop[indexPath.section].shopArea])
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toCellView"{
            let cellVC = segue.destination as! CellViewController
            cellVC.shop = sender as! Array<Any>
        }
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
