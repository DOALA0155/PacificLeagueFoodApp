//
//  ExplanationViewController.swift
//  pacificStadiumFood
//
//  Created by 勝山翔紀 on 2019/09/24.
//  Copyright © 2019 勝山翔紀. All rights reserved.
//

import UIKit

class ExplanationViewController: UIViewController {

    @IBOutlet weak var explanationTextArea: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        explanationTextArea.text = "このアプリは野球場にある飲食物をまとめたアプリです。数多くある中からピックアップしているため全ての食品を取り扱ってはいません。"
        // Do any additional setup after loading the view.
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
