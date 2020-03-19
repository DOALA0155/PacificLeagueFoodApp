//
//  SelectYafuokuViewController.swift
//  pacificStadiumFood
//
//  Created by 勝山翔紀 on 2019/09/22.
//  Copyright © 2019 勝山翔紀. All rights reserved.
//

import UIKit

class SelectYafuokuViewController: UIViewController{
    
    
    @IBOutlet weak var select1: UIButton!
    @IBOutlet weak var select2: UIButton!
    @IBOutlet weak var select3: UIButton!
    @IBOutlet weak var select4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        select1.layer.cornerRadius = 30
        select1.layer.masksToBounds = true
        select1.layer.borderWidth = 5
        select1.layer.borderColor = UIColor.blue.cgColor
        select2.layer.cornerRadius = 30
        select2.layer.masksToBounds = true
        select2.layer.borderWidth = 5
        select2.layer.borderColor = UIColor.blue.cgColor
        select3.layer.cornerRadius = 30
        select3.layer.masksToBounds = true
        select3.layer.borderWidth = 5
        select3.layer.borderColor = UIColor.blue.cgColor
        select4.layer.cornerRadius = 30
        select4.layer.masksToBounds = true
        select4.layer.borderWidth = 5
        select4.layer.borderColor = UIColor.blue.cgColor
    }
    
    /*
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tabBarController?.tabBar.isHidden = true
    }
     */
    
    @IBAction func slectedArea1(_ sender: Any) {
        self.performSegue(withIdentifier: "toYafuoku12", sender: "nil")
    }
    @IBAction func slectedArea2(_ sender: Any) {
        self.performSegue(withIdentifier: "toYafuoku34", sender: "nil")
    }
    @IBAction func slectedArea3(_ sender: Any) {
        self.performSegue(withIdentifier: "toYafuoku56", sender: "nil")
    }
    @IBAction func slectedArea4(_ sender: Any) {
        self.performSegue(withIdentifier: "toYafuoku78", sender: "nil")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toYafuoku12"{
            var allShop: [Data] = []
            let YafuokuVC = segue.destination as! ShopViewController
            let yafuoku_shop12_1 = Data(shopName: "アジアンデリ＆キッチン", shopImage: UIImage(named: "yafuoku_shop12_1.jpg")!, shopFoods: [["内川選手のグリーンヒットカレー", "950円", "カレー", "kare.png"], ["ビーフステーキのブラックアイス〜黒醤油風味〜", "1,100円", "丼物", "donmono.png"], ["ガイガパオ", "850円", "その他", "none.png"], ["パーコー飯", "950円", "丼物", "donmono.png"], ["アジアンデリプレート（カオマンガイ＆タッカルビ）", "1,000円", "その他", "none.png"], ["アジアンデリプレート（ガパオライス＆チヂミ）", "1,000円", "その他", "none.png"], ["アジアンデリプレート（パーコー飯＆唐揚げ）", "1,000円", "その他", "none.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
            let yafuoku_shop12_2 = Data(shopName: "フレッシュネスバーガー", shopImage: UIImage(named: "yafuoku_shop12_2.jpg")!, shopFoods: [["ローストビーフバーガー", "980円", "ハンバーガー", "hanbaga.png"], ["ロングポテト 塩コショウ味", "600円", "ポテト", "poteto.png"], ["インド風 スパイスチキンカレー", "700円", "カレー", "kare.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
            let yafuoku_shop12_3 = Data(shopName: "サブウェイ", shopImage: UIImage(named: "yafuoku_shop12_3.jpg")!, shopFoods: [["甲斐選手のたまごBLT", "620円", "ホットドック", "hottodokku.png"], ["甲斐選手のハニーマスタードゴールデンポテト", "950円（メットなし：750円）", "ポテト", "poteto.png"], ["森投手のお肉３倍もりもりローストビーフ", "1,000円", "ホットドック", "hottodokku.png"], ["デスパイネ選手のアボカドディップポテト", "980円（メットなし：780円）", "ポテト", "poteto.png"], ["金格バーグデラックス", "1,080円", "ホットドック", "hottodokku.png"], ["クリームチーズチキンロール（バジルチキン）", "560円", "その他", "none.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
            let yafuoku_shop12_4 = Data(shopName: "鉄板酒場　徹一", shopImage: UIImage(named: "yafuoku_shop12_4.jpg")!, shopFoods: [["昔ながらの鉄板ソース焼きそば", "650円", "焼きそば", "yakisoba.png"], ["厚切り豚丼", "850円", "丼物", "donmono.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
            let yafuoku_shop12_5 = Data(shopName: "スタ飯ラボ１", shopImage: UIImage(named: "yafuoku_12_5.jpg")!, shopFoods: [["武田投手のチキン南蛮", "1,000円", "丼物", "donmono.png"], ["ポテチキ", "450円", "ポテト", "poteto.png"], ["蜂の家カツカレー", "880円", "カレー", "kare.png"], ["たれカツ丼", "850円", "丼物", "donmono.png"], ["フロートメロン", "450円", "スイーツ", "sweets.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
            let yafuoku_shop12_6 = Data(shopName: "コカ・コーラショップ", shopImage: UIImage(named: "yafuoku_shop12_6.jpg")!, shopFoods: [["今宮選手の和風ハンバーグライスバーガー", "900円", "ハンバーガー", "hanbaga.png"], ["ホットチーズポテトフライ", "600円", "ポテト", "poteto.png"], ["チキン＆ソーセージ＆ポテト", "750円", "ポテト", "poteto.png"], ["メガヘルメットポップコーン（塩バター）", "1,500円", "ポップコーン", "poppukonn.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
            let yafuoku_shop12_7 = Data(shopName: "ピエトロパスタミオミオ", shopImage: UIImage(named: "yafuoku_shop12_7.jpg")!, shopFoods: [["ミオミオサラダパスタ", "410円", "サラダ", "sarada.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
            let yafuoku_shop12_8 = Data(shopName: "FUKUOKA CRAFT", shopImage: UIImage(named: "yafuoku_shop12_8.jpg")!, shopFoods: [["チリドック", "900円", "ホットドック", "hottodokku.png"], ["タコライス", "880円", "その他", "none.png"], ["ソフトクリーム", "580円", "スイーツ", "sweets.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
            let yafuoku_shop12_9 = Data(shopName: "肉山福岡", shopImage: UIImage(named: "yafuoku_shop12_9.jpg")!, shopFoods: [["肉山ロースステーキ丼", "1,300円", "丼物", "donmono.png"], ["肉山カレー", "850円（ハーフ 600円）", "カレー", "kare.png"], ["石川投手の2929(にくにく)さがりステーキカレー", "1,600円", "カレー", "kare.png"], ["ilsoleジェラート(定番)", "300円", "スイーツ", "sweets.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
            
            
            allShop.append(yafuoku_shop12_1)
            allShop.append(yafuoku_shop12_2)
            allShop.append(yafuoku_shop12_3)
            allShop.append(yafuoku_shop12_4)
            allShop.append(yafuoku_shop12_5)
            allShop.append(yafuoku_shop12_6)
            allShop.append(yafuoku_shop12_7)
            allShop.append(yafuoku_shop12_8)
            allShop.append(yafuoku_shop12_9)
            
            YafuokuVC.allShop = allShop
            }
        else if segue.identifier == "toYafuoku34"{
            var allShop: [Data] = []
            let YafuokuVC = segue.destination as! ShopViewController
            let yafuoku_shop34_1 = Data(shopName: "ホークスカフェ１", shopImage: UIImage(named: "yafuoku_shop34_1.jpg")!, shopFoods: [["川島選手の佐世保バーガーＢＯＸ", "1,000円", "ハンバーガー", "hanbaga.png"], ["中村選手のブレッドポット（タンシチュー）", "1,000円", "その他", "none.png"], ["コブサラダフレンチトースト", "900円", "その他", "none.png"], ["メガヘルメットホットチーズナチョス", "2,000円", "その他", "none.png"], ["ヘルメットポテトチップ＆アメリカンドッグ", "850円", "その他", "none.png"], ["プレミアムソフト　クレミア", "500円", "スイーツ", "sweets.png"], ], shopArea: "ヤフオクドーム　3,4GATE(11~18通路)")
            let yafuoku_shop34_2 = Data(shopName: "ホークスカフェ２", shopImage: UIImage(named: "yafuoku_shop34_2.jpg")!, shopFoods: [["甲斐選手のオムキャノン", "1,000円", "丼物", "donmono.png"], ["松田選手のステーキ丼", "1,100円", "丼物", "donmono.png"], ["カツカレー", "850円", "カレー", "kare.png"], ["牛ロースとチキン南蛮のコンボ", "950円", "丼物", "donmono.png"], ["おつまみ盛り合わせ", "700円", "その他", "none.png"], ["豚バラ串", "600円", "焼き鳥", "yakitori.png"], ["国産牛串", "900円", "焼き鳥", "yakitori.png"], ["鶏串", "600円", "焼き鳥", "yakitori.png"], ], shopArea: "ヤフオクドーム　3,4GATE(11~18通路)")
            let yafuoku_shop34_3 = Data(shopName: "ホークスカフェ３", shopImage: UIImage(named: "yafuoku_shop34_3.jpg")!, shopFoods: [["川島選手のレモンステーキプレート", "1,100円", "丼物", "donmono.png"], ["東浜投手の沖縄そば", "850円", "ラーメン", "ramen.png"], ["ソースカツ焼きそば", "950円", "焼きそば", "yakisoba.png"], ["ヘルメットカリーヴルスト＆ポテト", "800円", "ポテト", "poteto.png"], ["おつまみ盛り合わせ", "700円", "その他", "none.png"]], shopArea: "ヤフオクドーム　3,4GATE(11~18通路)")
            let yafuoku_shop34_4 = Data(shopName: "モスバーガー", shopImage: UIImage(named: "yafuoku_shop34_4.jpg")!, shopFoods: [["柳田選手のトリプル。ギータバーガー", "770円", "ハンバーガー", "hanbaga.png"], ["モスバーガー", "400円", "ハンバーガー", "hanbaga.png"], ["海老カツバーガー", "410円", "ハンバーガー", "hanbaga.png"], ["ロースカツバーガー", "410円", "ハンバーガー", "hanbaga.png"], ["和風チキンバーガー", "380円", "ハンバーガー", "hanbaga.png"]], shopArea: "ヤフオクドーム　3,4GATE(11~18通路)")
            allShop.append(yafuoku_shop34_1)
            allShop.append(yafuoku_shop34_2)
            allShop.append(yafuoku_shop34_3)
            allShop.append(yafuoku_shop34_4)
            YafuokuVC.allShop = allShop
        }
        else if segue.identifier == "toYafuoku56"{
            var allShop: [Data] = []
            let YafuokuVC = segue.destination as! ShopViewController
            
            let yafuoku_shop56_1 = Data(shopName: "ラーメン二郎坊", shopImage: UIImage(named: "yafuoku_shop56_1.jpg")!, shopFoods: [["味付半熟煮玉子らーめん", "800円", "ラーメン", "ramen.png"], ["博多ひとくちぎょうざ（8個）", "500円", "餃子","gyoza.png"]], shopArea: "ヤフオクドーム　5,6GATE(20~26通路)")
            let yafuoku_shop56_2 = Data(shopName: "スタ飯ラボ５", shopImage: UIImage(named: "yafuoku_shop56_2.jpg")!, shopFoods: [["内川選手の鶏天", "550円", "チキン", "chikin.png"], ["上林選手のモンスタ丼", "850円", "丼物", "donmono.png"], ["もりもりスナックBOX", "1,000円", "ポテト", "poteto.png"], ["ソースチキンカツ丼", "850円", "丼物", "donmono.png"]], shopArea: "ヤフオクドーム　5,6GATE(20~26通路)")
            let yafuoku_shop56_3 = Data(shopName: "サブウェイ", shopImage: UIImage(named: "yafuoku_shop56_3.jpg")!, shopFoods: [["甲斐選手のたまごBLT", "620円", "ホットドック", "hottodokku.png"], ["甲斐選手のハニーマスタードゴールデンポテト", "950円（メットなし：750円）", "ポテト", "poteto.png"], ["森投手のお肉３倍もりもりローストビーフ", "1,000円", "ホットドック", "hottodokku.png"], ["デスパイネ選手のアボカドディップポテト", "980円（メットなし：780円）", "ポテト", "poteto.png"], ["金格バーグデラックス", "1,080円", "ホットドック", "hottodokku.png"], ["クリームチーズチキンロール（バジルチキン）", "560円", "その他", "none.png"]], shopArea: "ヤフオクドーム　5,6GATE(20~26通路)")
            let yafuoku_shop56_4 = Data(shopName: "ケンタッキーフライドチキン", shopImage: UIImage(named: "yafuoku_shop56_4.jpg")!, shopFoods: [["選べる1,000円パックＳ", "1,000円", "チキン", "chikin.png"], ["工藤監督の味噌カツサンド", "500円", "ハンバーガー", "hanbaga.png"], ["今宮選手の今宮ケンタ丼", "850円", "丼物", "donmono.png"], ["ケイジャン風味ポップコーンチキン", "500円", "chikin", ".png"]], shopArea: "ヤフオクドーム　5,6GATE(20~26通路)")
            let yafuoku_shop56_5 = Data(shopName: "ピエトロパスタミオミオ", shopImage: UIImage(named: "yafuoku_shop56_5.jpg")!, shopFoods: [["ミオミオサラダパスタ", "410円", "サラダ", "sarada.png"]], shopArea: "ヤフオクドーム　5,6GATE(20~26通路)")
            let yafuoku_shop56_6 = Data(shopName: "ディッパーダン", shopImage: UIImage(named: "yafuoku_shop56_6.jpg")!, shopFoods: [["糸島野菜サラダ", "600円", "サラダ", "sarada.png"], ["イチゴバナナカスタードチョコ", "500円", "スイーツ", "sweets.png"], ["岩嵜投手のピーナッツヘルメットサンデー", "650円", "スイーツ", "sweets.png"], ["甲斐選手のかぼすヘルメットサンデー", "650円", "スイーツ", "sweets.png"], ["削りイチゴ", "500円", "スイーツ", "sweets.png"], ["デコソフト　マンゴー", "700円", "スイーツ", "sweets.png"], ["フルーツソフト", "600円", "スイーツ", "sweets.png"], ["ハッピーシェアアイス", "1,500円", "スイーツ", "sweets.png"], ["プレミアムドリンク　果実の恵みソーダ", "700円", "スイーツ", "sweets.png"], ["タピオカリッチミルクティ", "600円", "スイーツ", "sweets.png"]], shopArea: "ヤフオクドーム　5,6GATE(20~26通路)")
            allShop.append(yafuoku_shop56_1)
            allShop.append(yafuoku_shop56_2)
            allShop.append(yafuoku_shop56_3)
            allShop.append(yafuoku_shop56_4)
            allShop.append(yafuoku_shop56_5)
            allShop.append(yafuoku_shop56_6)
            YafuokuVC.allShop = allShop
        }
        else if segue.identifier == "toYafuoku78"{
            var allShop: [Data] = []
            let YafuokuVC = segue.destination as! ShopViewController
            
            let yafuoku_shop78_1 = Data(shopName: "とめ手羽", shopImage: UIImage(named: "yafuoku_shop78_1.jpg")!, shopFoods: [["上林選手のテリマヨ丼", "800円", "丼物", "donmono.png"], ["ささみチーズ勝つ丼", "900円", "丼物", "donmono.png"], ["メガ勝どき揚げ丼", "1,500円", "丼物", "donmono.png"], ["鶏やげん軟骨の唐揚げ", "600円", "唐揚げ", "karaage.png"], ["名物とめ手羽", "3本盛 700円", "チキン", "chikin.png"]], shopArea: "ヤフオクドーム　7,8GATE(28~32通路)")
            let yafuoku_shop78_2 = Data(shopName: "スタジアム横丁", shopImage: UIImage(named: "yafuoku_shop78_2.jpg")!, shopFoods: [["ハムカツ", "400円", "none", "none.png"], ["冷奴(ザーサイ)", "400円", "none", "none.png"], ["茄子と豚バラの黒酢味噌炒め", "400円", "none", "none.png"], ["串揚げ4本盛り", "400円", "none", "none.png"], ["唐揚げとごぼうの甘辛煮", "400円", "唐揚げ", "karaage.png"], ["炭火鶏のねぎポン酢あえ", "400円", "none", "none.png"]], shopArea: "ヤフオクドーム　7,8GATE(28~32通路)")
            let yafuoku_shop78_3 = Data(shopName: "京都勝牛", shopImage: UIImage(named: "yafuoku_shop78_3.jpg")!, shopFoods: [["松田選手の厚切り牛カツとローストビーフ丼", "1,850円", "丼物", "donmono.png"], ["牛カツ丼", "1,250円", "丼物", "donmono.png"], ["ローストビーフ丼", "950円", "丼物", "donmono.png"], ["勝牛ホームラン丼", "1,350円", "丼物", "donmono.png"], ["一口牛カツカップ", "600円", "その他", "none.png"], ["アイススモア", "500円", "スイーツ", "sweets.png"]], shopArea: "ヤフオクドーム　7,8GATE(28~32通路)")
            let yafuoku_shop78_4 = Data(shopName: "モスバーガー", shopImage: UIImage(named: "yafuoku_shop78_4.jpg")!, shopFoods: [["柳田選手のトリプル。ギータバーガー", "770円", "ハンバーガー", "hanbaga.png"], ["モスバーガー", "400円", "ハンバーガー", "hanbaga.png"], ["海老カツバーガー", "410円", "ハンバーガー", "hanbaga.png"], ["ロースカツバーガー", "410円", "ハンバーガー", "hanbaga.png"], ["和風チキンバーガー", "380円", "ハンバーガー", "hanbaga.png"]], shopArea: "ヤフオクドーム　7,8GATE(28~32通路)")
            let yafuoku_shop78_5 = Data(shopName: "焼きバルももち", shopImage: UIImage(named: "yafuoku_shop78_5.jpg")!, shopFoods: [["柳田選手のギータ焼", "1,000円", "丼物", "donmono.png"], ["ウィンナー盛り", "650円", "その他", "none.png"], ["豚ばら串", "480円", "焼き鳥", "yakitori.png"], ["牛さがり串", "550円", "焼き鳥", "yakitori.png"], ["ソフトアイスソーダ", "380円", "スイーツ", "sweets.png"]], shopArea: "ヤフオクドーム　7,8GATE(28~32通路)")
            let yafuoku_shop78_6 = Data(shopName: "ごぜん", shopImage: UIImage(named: "yafuoku_shop78_6.jpg")!, shopFoods: [["ネギたこ焼き", "550円", "たこ焼き", "takoyaki.png"], ["メガ盛ポテト", "650円", "ポテト", "poteto.png"], ["肉うどん", "680円", "うどん", ".png"], ["かしわうどん", "650円", "うどん", "udon.png"], ["ホークスうどん", "700円", "うどん", "udon.png"], ["トッピング", "各種 150円～200円", "その他", "none.png"]], shopArea: "ヤフオクドーム　7,8GATE(28~32通路)")
            allShop.append(yafuoku_shop78_1)
            allShop.append(yafuoku_shop78_2)
            allShop.append(yafuoku_shop78_3)
            allShop.append(yafuoku_shop78_4)
            allShop.append(yafuoku_shop78_5)
            allShop.append(yafuoku_shop78_6)
            YafuokuVC.allShop = allShop
        }
            
        }
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


