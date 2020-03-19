//
//  SelectSeibuViewController.swift
//  pacificStadiumFood
//
//  Created by 勝山翔紀 on 2019/09/26.
//  Copyright © 2019 勝山翔紀. All rights reserved.
//

import UIKit

class SelectSeibuViewController: UIViewController {

    @IBOutlet weak var select1: UIButton!
    @IBOutlet weak var select2: UIButton!
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
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectedArea1(_ sender: Any) {
        self.performSegue(withIdentifier: "toSeibu1", sender: "nil")
    }
    @IBAction func selectedArea2(_ sender: Any) {
        self.performSegue(withIdentifier: "toSeibu2", sender: "nil")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSeibu1" {
            var allShop: [Data] = []
            let SeibuVC = segue.destination as! ShopViewController
            let seibu_shop1_1 = Data(shopName: "らあめん花月嵐", shopImage: UIImage(named: "seibu_shop1_1.jpg")!, shopFoods: [["嵐げんこつらあめん", "850円", "ラーメン", "ramen.png"], ["嵐げんこつらあめん味噌", "850円", "ラーメン", "ramen.png"], ["嵐げんこつらあめん塩", "850円", "ラーメン", "ramen.png"], ["嵐げんこつチャーシューメン", "1,050円", "ラーメン", "ramen.png"], ["黄金の味噌ラーメン", "900円", "ラーメン", "ramen.png"], ["ドームチャーハン", "500円", "チャーハン", "chahan.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_2 = Data(shopName: "リトル沖縄", shopImage: UIImage(named: "seibu_shop1_2.jpg")!, shopFoods: [["山川のあぐーまぜソバ", "950円", "その他", "none.png"], ["沖縄ソーキそば", "780円", "その他", "none.png"], ["温玉タコライス", "990円", "その他", "none.png"], ["タコライス", "880円", "その他", "none.png"], ["タコスそば", "880円", "その他", "none.png"], ["カーリーフライ", "420円", "その他", "none.png"], ["タコスボール", "370円", "その他", "none.png"], ["サーターアンダギー", "150円～", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_3 = Data(shopName: "築地　銀だこ", shopImage: UIImage(named: "seibu_shop1_3.jpg")!, shopFoods: [["ねぎマヨ(6個入り)", "650円", "たこ焼き", "takoyaki.png"], ["チーズ明太子(6個入り)", "650円", "たこ焼き", "takoyaki.png"], ["ねぎだこ(6個入り)", "650円", "たこ焼き", "takoyaki.png"], ["たこ焼き(6個入り)", "550円", "たこ焼き", "takoyaki.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_4 = Data(shopName: "西安餃子", shopImage: UIImage(named: "seibu_shop1_4.jpg")!, shopFoods: [["SHOGO MEN!!!", "950円", "その他", "none.png"], ["一口焼き餃子", "570円", "餃子", "gyoza.png"], ["ねぎ塩餃子", "620円", "餃子", "gyoza.png"], ["西安水餃子", "620円", "餃子", "gyoza.png"], ["汁なし担々麺", "830円", "ラーメン", "ramen.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_5 = Data(shopName: "L's Winner（エルズウィナー）", shopImage: UIImage(named: "seibu_shop1_5.jpg")!, shopFoods: [["ベリーチョコバナナ", "1,000円", "スイーツ", "sweets.png"], ["いちごミルクベリー", "900円", "スイーツ", "sweets.png"], ["グレープフルーツとライチのブルーハワイ", "900円", "スイーツ", "sweets.png"], ["はちみつグラノーラ", "900円", "スイーツ", "sweets.png"], ["山盛りプチシュークリーム", "620円", "スイーツ", "sweets.png"], ["ストロベリーパンケーキ", "500円", "スイーツ", "sweets.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_6 = Data(shopName: "ケンタッキーフライドチキン", shopImage: UIImage(named: "seibu_shop1_6.jpg")!, shopFoods: [["オリジナルチキン2ピース", "550円", "チキン", "chikin.png"], ["チキンフィレサンド", "450円", "ハンバーガー", "hanbaga.png"], ["和風カツサンド", "450円", "ハンバーガー", "hanbaga.png"], ["カーネリングポテト", "500円", "ポテト", "poteto.png"], ["ナゲット5ピース", "500円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_7 = Data(shopName: "L's Store（エルズストア）", shopImage: UIImage(named: "seibu_shop1_7.jpg")!, shopFoods: [["獅子リアンライス", "920円", "その他", "none.png"], ["プレミアムライオンズバーガー", "880円", "ハンバーガー", "hanbaga.png"], ["プレミアム海老カツバーガー", "880円", "ハンバーガー", "hanbaga.png"], ["バーベキューポーク丼", "800円", "丼物", "donmono.png"], ["照り焼きチキン丼", "800円", "丼物", "donmono.png"], ["ネギ塩チキン", "470円", "チキン", "chikin.png"], ["黒豚メンチカツ", "310円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_8 = Data(shopName: "Dippin Docts（ディッピンドッツ）", shopImage: UIImage(named: "seibu_shop1_8.jpg")!, shopFoods: [["ヘルメットアイス/ビジターヘルメットアイス", "600円", "スイーツ", "sweets.png"], ["LIONSコットンキャンディ", "600円～", "スイーツ", "sweets.png"], ["ライオンズフローズンポップコーン", "600円", "ポップコーン", "poppukon.png"], ["つぶつぶアイス", "400円", "スイーツ", "sweets.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_9 = Data(shopName: "ニューフジショップ", shopImage: UIImage(named: "seibu_shop1_9.jpg")!, shopFoods: [["スタジアムカレーライス", "800円", "カレー", "kare.png"], ["よくばりセット", "680円", "その他", "none.png"], ["鶏のから揚げ", "480円", "唐揚げ", "karaage.png"], ["BIGフライドポテト", "450円", "ポテト", "poteto.png"], ["ポークもち", "400円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_10 = Data(shopName: "UCC（ユーシーシー）", shopImage: UIImage(named: "seibu_shop1_10.jpg")!, shopFoods: [["バターチキンカレー", "750円", "カレー", "kare.png"], ["ビーフカレー", "700円", "カレー", "kare.png"], ["ビッグドックチーズ", "520円", "ホットドック", "hottodokku.png"], ["ビッグドッグチリ", "520円", "ホットドック", "hottodokku.png"], ["ビッグドッグプレーン", "470円", "ホットドック", "hottodokku.png"], ["棒ヒレカツドッグ", "520円", "ホットドック", "hottodokku.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_11 = Data(shopName: "日本鶏園", shopImage: UIImage(named: "seibu_shop1_11.jpg")!, shopFoods: [["もつ煮めし", "850円", "その他", "none.png"], ["もつ煮", "480円～", "その他", "none.png"], ["やきとり5本セット", "700円", "焼き鳥", "yakitori.png"], ["手羽トロ串", "520円", "焼き鳥", "yakitori.png"], ["手羽トロ弁当", "950円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_12 = Data(shopName: "宮本牧場", shopImage: UIImage(named: "seibu_shop1_12.jpg")!, shopFoods: [["ローストビーフ丼", "800円", "丼物", "donmono.png"], ["牛大串カルビ", "520円", "焼き鳥", "yakitori.png"], ["豚大串カルビ", "520円", "焼き鳥", "yakitori.png"], ["ジャンボ塩タン", "520円", "焼き鳥", "yakitori.png"], ["肉巻おにぎり棒", "400円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_13 = Data(shopName: "いなば和幸", shopImage: UIImage(named: "seibu_shop1_13.jpg")!, shopFoods: [["カツ重", "950円", "丼物", "donmono.png"], ["かつカレー", "950円", "カレー", "kare.png"], ["ひれかつ定食", "1,200円", "その他", "none.png"], ["ロースかつ定食", "1,100円", "その他", "none.png"], ["とん汁", "400円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_14 = Data(shopName: "新井園本店1-9", shopImage: UIImage(named: "seibu_shop1_14.jpg")!, shopFoods: [["ソース焼きそば", "500円", "焼きそば", "yakisoba.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_15 = Data(shopName: "L's SPORTS BAR BRICKS（エルズスポーツバーブリックス）", shopImage: UIImage(named: "seibu_shop1_15.jpg")!, shopFoods: [["クリスピーフィッシュ", "850円", "チキン", "chikin.png"], ["ブルームーンチキン", "1,000円", "チキン", "chikin.png"], ["モンスターナチョス", "700円/1,000円", "その他", "none.png"], ["フライドポテト＆オニオンリング", "700円", "ポテト", "poteto.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_16 = Data(shopName: "新井園本店1-21", shopImage: UIImage(named: "seibu_shop1_16.jpg")!, shopFoods: [["狭山茶漬け～紀州南高梅", "780円", "その他", "none.png"], ["狭山茶漬け～鮭", "780円", "その他", "none.png"], ["狭山茶漬け～明太子", "780円", "その他", "none.png"], ["狭山茶漬け～野沢菜", "700円", "その他", "none.png"], ["狭山茶漬け", "600円", "その他", "none.png"], ["ヘルメット抹茶ソフトクリーム", "620円", "スイーツ", "sweets.png"], ["小倉抹茶ソフトクリーム", "500円", "スイーツ", "sweets.png"], ["抹茶ソフトクリーム", "420円", "スイーツ", "sweets.png"], ["肉まん", "350円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_17 = Data(shopName: "L's Cafe（エルズカフェ）", shopImage: UIImage(named: "seibu_shop1_17.jpg")!, shopFoods: [["獅子リアンライス", "920円", "", ".png"], ["湯葉としらすの明太子クリームパスタ", "850円", "スパゲッティー", "supagetthi.png"], ["プレミアムライオンズドッグ", "570円", "ホットドック", "hottodokku.png"], ["プレミアムライオンズバーガー", "880円", "ハンバーガー", "hanbaga.png"], ["プレミアム海老カツバーガー", "880円", "ハンバーガー", "hanbaga.png"], ["ハワイアンロコモコ", "800円", "その他", "none.png"], ["バーベキューポーク丼", "800円", "丼物", "donmono.png"], ["照り焼きチキン丼", "800円", "丼物", "donmono.png"], ["ガーリックフライドポテト", "420円", "ポテト", "poteto.png"], ["ネギ塩チキン", "470円", "チキン", "chikin.png"], ["5種ソーセージ盛り合わせ", "580円", "その他", "none.png"], ["黒豚メンチカツ", "310円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_18 = Data(shopName: "竹國うどん・そば", shopImage: UIImage(named: "seibu_shop1_18.jpg")!, shopFoods: [["よくばりうどん・そば", "730円", "うどん", "udon.png"], ["カレーうどん・そば", "730円", "うどん", "udon.png"], ["かき揚げうどん・そば", "620円", "うどん", "udon.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_19 = Data(shopName: "サーティワンアイスクリーム", shopImage: UIImage(named: "seibu_shop1_19.jpg")!, shopFoods: [["ポーションカップ＆レオカップ", "830円", "スイーツ", "sweets.png"], ["アイスクリームレギュラー", "480円", "スイーツ", "sweets.png"], ["ドーム焼き(クリーム)", "150円", "スイーツ", "sweets.png"], ["ドーム焼き(あんこ)", "150円", "スイーツ", "sweets.png"], ["スタジアムドッグ", "400円", "ホットドック", "hottodokku.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            let seibu_shop1_20 = Data(shopName: "球弁", shopImage: UIImage(named: "seibu_shop1_20.jpg")!, shopFoods: [["巧御膳", "1,400円", "弁当", "bento.png"], ["源田の＃箸とまらん弁当", "1,400円", "弁当", "bento.png"], ["ねこの洋食弁当", "1,400円", "弁当", "bento.png"], ["友哉の牛肉めし", "1,400円", "弁当", "bento.png"], ["内海のダブルチキン弁当", "1,400円", "弁当", "bento.png"], ["山川のちゅんじゅくステーキ弁当", "1,500円", "弁当", "bento.png"], ["秋山ガンバレ！弁当", "1,400円", "弁当", "bento.png"], ["剛也の串カツ弁当", "1,400円", "弁当", "bento.png"], ["しじみ丼", "950円", "弁当", "bento.png"], ["油麩丼", "950円", "弁当", "bento.png"], ["ぼっかけ丼", "1,000円", "弁当", "bento.png"], ["かしわ飯", "950円", "弁当", "bento.png"], ["かに飯", "1,100円", "弁当", "bento.png"], ["埼玉西武ライオンズOfficial勝サンド", "690円", "弁当", "bento.png"], ["埼玉西武ライオンズOfficialエビ勝サンド", "690円", "弁当", "bento.png"], ["埼玉西武ライオンズOfficialチキン勝サンド", "670円", "弁当", "bento.png"], ["牛タン塩だれ弁当", "1,200円", "弁当", "bento.png"], ["牛焼肉＆グラタンコロッケ弁当", "1,100円", "弁当", "bento.png"], ["松花堂弁当", "1,100円", "弁当", "bento.png"], ["ミックスフライ弁当", "1,050円", "弁当", "bento.png"], ["ホームラン弁当", "1,000円", "弁当", "bento.png"], ["幕の内弁当～炊き込みご飯～", "1,000円", "弁当", "bento.png"], ["彩り弁当", "950円", "弁当", "bento.png"], ["とりめし～味噌だれ～", "950円", "弁当", "bento.png"], ["やきとり弁当", "950円", "弁当", "bento.png"], ["おむすび弁当", "830円", "弁当", "bento.png"], ["ミックスサンドBOX", "700円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内一塁側")
            allShop.append(seibu_shop1_1)
            allShop.append(seibu_shop1_2)
            allShop.append(seibu_shop1_3)
            allShop.append(seibu_shop1_4)
            allShop.append(seibu_shop1_5)
            allShop.append(seibu_shop1_6)
            allShop.append(seibu_shop1_7)
            allShop.append(seibu_shop1_8)
            allShop.append(seibu_shop1_9)
            allShop.append(seibu_shop1_10)
            allShop.append(seibu_shop1_11)
            allShop.append(seibu_shop1_12)
            allShop.append(seibu_shop1_13)
            allShop.append(seibu_shop1_14)
            allShop.append(seibu_shop1_15)
            allShop.append(seibu_shop1_16)
            allShop.append(seibu_shop1_17)
            allShop.append(seibu_shop1_18)
            allShop.append(seibu_shop1_19)
            allShop.append(seibu_shop1_20)
            SeibuVC.allShop = allShop
            
        }
        else if segue.identifier == "toSeibu3"{
            var allShop: [Data] = []
            let SeibuVC = segue.destination as! ShopViewController
            let seibu_shop3_1 = Data(shopName: "L's CRAFT（エルズクラフト）", shopImage: UIImage(named: "Seibu_shop3_1.jpg")!, shopFoods: [["5種のチーズ", "1,600円", "ピザ", "piza.png"], ["照り焼きチキン", "1,200円", "ピザ", "piza.png"], ["チョコバナナ", "1,200円", "ピザ", "piza.png"], ["コロラドピザ・チーズ", "1,000円", "ピザ", "piza.png"], ["コロラドピザ・トマト", "1,200円", "ピザ", "piza.png"], ["コロラドピザ・ペパロニ", "1,200円", "ピザ", "piza.png"], ["コロラドピザ・スモア", "1,200円", "ピザ", "piza.png"], ["コロラドピザ・オレンジ", "1,200円", "ピザ", "piza.png"], ["フライドポテト", "600円", "ポテト", "poteto.png"], ["ミックスナッツ", "350円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_2 = Data(shopName: "L's Diner（エルズダイナー）", shopImage: UIImage(named: "Seibu_shop3_2.jpg")!, shopFoods: [["獅子リアンライス", "920円", "", ".png"], ["湯葉としらすの明太子クリームパスタ", "850円", "スパゲッティー", "supagetthi.png"], ["プレミアムライオンズドッグ", "570円", "ホットドック", "hottodokku.png"], ["プレミアムライオンズバーガー", "880円", "ハンバーガー", "hanbaga.png"], ["プレミアム海老カツバーガー", "880円", "ハンバーガー", "hanbaga.png"], ["ハワイアンロコモコ", "800円", "その他", "none.png"], ["バーベキューポーク丼", "800円", "丼物", "donmono.png"], ["照り焼きチキン丼", "800円", "丼物", "donmono.png"], ["ガーリックフライドポテト", "420円", "ポテト", "poteto.png"], ["ネギ塩チキン", "470円", "チキン", "chikin.png"], ["5種ソーセージ盛り合わせ", "580円", "その他", "none.png"], ["黒豚メンチカツ", "310円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_3 = Data(shopName: "L's BAR（エルズバル）", shopImage: UIImage(named: "Seibu_shop3_.3jpg")!, shopFoods: [["獅子リアンライス", "920円", "その他", "none.png"], ["プレミアムライオンズバーガー", "880円", "ハンバーガー", "hanbaga.png"], ["プレミアム海老カツバーガー", "880円", "ハンバーガー", "hanbaga.png"], ["バーベキューポーク丼", "800円", "丼物", "donmono.png"], ["照り焼きチキン丼", "800円", "丼物", "donmono.png"], ["ネギ塩チキン", "470円", "チキン", "chikin.png"], ["黒豚メンチカツ", "310円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_4 = Data(shopName: "L's STYLE（エルズスタイル）", shopImage: UIImage(named: "Seibu_shop3_4.jpg")!, shopFoods: [["ベリーチョコバナナ", "1,000円", "スイーツ", "sweets.png"], ["いちごミルクベリー", "900円", "スイーツ", "sweets.png"], ["グレープフルーツとライチのブルーハワイ", "900円", "スイーツ", "sweets.png"], ["はちみつグラノーラ", "900円", "スイーツ", "sweets.png"], ["山盛りプチシュークリーム", "620円", "スイーツ", "sweets.png"], ["ストロベリーパンケーキ", "500円", "スイーツ", "sweets.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_5 = Data(shopName: "宮木牧場", shopImage: UIImage(named: "Seibu_shop3_5.jpg")!, shopFoods: [["メヒアのパワープレート", "990円", "その他", "none.png"], ["ローストビーフ丼", "800円", "丼物", "donmono.png"], ["牛カルビ焼丼", "750円", "丼物", "donmono.png"], ["肉巻おにぎり棒", "400円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_6 = Data(shopName: "西安餃子", shopImage: UIImage(named: "Seibu_shop3_6.jpg")!, shopFoods: [["SHOGO MEN!!!", "950円", "その他", "none.png"], ["一口焼き餃子", "570円", "餃子", "gyoza.png"], ["ねぎ塩餃子", "620円", "餃子", "gyoza.png"], ["西安水餃子", "620円", "餃子", "gyoza.png"], ["汁なし担々麺", "830円", "ラーメン", "ramen.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_7 = Data(shopName: "DippinDots（ディッピンドッツ）", shopImage: UIImage(named: "Seibu_shop3_7.jpg")!, shopFoods: [["ヘルメットアイス/ビジターヘルメットアイス", "600円", "スイーツ", "sweets.png"], ["LIONSコットンキャンディ", "600円～", "スイーツ", "sweets.png"], ["ライオンズフローズンポップコーン", "600円", "ポップコーン", "poppukon.png"], ["つぶつぶアイス", "400円", "スイーツ", "sweets.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_8 = Data(shopName: "ニューフジショプ3-8", shopImage: UIImage(named: "Seibu_shop3_8.jpg")!, shopFoods: [["よくばりセット", "680円", "その他", "none.png"], ["鶏のから揚げ", "480円", "唐揚げ", "karaage.png"], ["BIGフライドポテト", "450円", "ポテト", "poteto.png"], ["ポークもち", "400円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_9 = Data(shopName: "ショコモンフレンチパンケーキ", shopImage: UIImage(named: "Seibu_shop3_9.jpg")!, shopFoods: [["クレープ各種", "400円〜", "スイーツ", "sweets.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_10 = Data(shopName: "新井園本店3-10", shopImage: UIImage(named: "Seibu_shop3_10.jpg")!, shopFoods: [["たこ焼き", "570円", "たこ焼き", "takoyaki.png"], ["巧の明石焼き", "750円", "たこ焼き", "takoyaki.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_11 = Data(shopName: "リトル沖縄", shopImage: UIImage(named: "Seibu_shop3_11.jpg")!, shopFoods: [["山川のあぐーまぜソバ", "950円", "その他", "none.png"], ["沖縄ソーキそば", "780円", "その他", "none.png"], ["温玉タコライス", "990円", "その他", "none.png"], ["タコライス", "880円", "その他", "none.png"], ["タコスそば", "880円", "その他", "none.png"], ["カーリーフライ", "420円", "その他", "none.png"], ["タコスボール", "370円", "その他", "none.png"], ["サーターアンダギー", "150円～", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_12 = Data(shopName: "ニューフジショップ3-13", shopImage: UIImage(named: "Seibu_shop3_12.jpg")!, shopFoods: [["極み醤油ラーメン", "850円", "ラーメン", "ramen.png"], ["極みチャーシュー麺", "980円", "ラーメン", "ramen.png"], ["スタジアムカレーライス", "800円", "カレー", "kare.png"], ["よくばりセット", "680円", "その他", "none.png"], ["鶏のから揚げ", "480円", "唐揚げ", "karaage.png"], ["BIGフライドポテト", "450円", "ポテト", "poteto.png"], ["ポークもち", "400円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_13 = Data(shopName: "球弁", shopImage: UIImage(named: "Seibu_shop3_13.jpg")!, shopFoods: [["巧御膳", "1,400円", "弁当", "bento.png"], ["源田の＃箸とまらん弁当", "1,400円", "弁当", "bento.png"], ["ねこの洋食弁当", "1,400円", "弁当", "bento.png"], ["友哉の牛肉めし", "1,400円", "弁当", "bento.png"], ["内海のダブルチキン弁当", "1,400円", "弁当", "bento.png"], ["山川のちゅんじゅくステーキ弁当", "1,500円", "弁当", "bento.png"], ["秋山ガンバレ！弁当", "1,400円", "弁当", "bento.png"], ["剛也の串カツ弁当", "1,400円", "弁当", "bento.png"], ["しじみ丼", "950円", "弁当", "bento.png"], ["油麩丼", "950円", "弁当", "bento.png"], ["ぼっかけ丼", "1,000円", "弁当", "bento.png"], ["かしわ飯", "950円", "弁当", "bento.png"], ["かに飯", "1,100円", "弁当", "bento.png"], ["埼玉西武ライオンズOfficial勝サンド", "690円", "弁当", "bento.png"], ["埼玉西武ライオンズOfficialエビ勝サンド", "690円", "弁当", "bento.png"], ["埼玉西武ライオンズOfficialチキン勝サンド", "670円", "弁当", "bento.png"], ["牛タン塩だれ弁当", "1,200円", "弁当", "bento.png"], ["牛焼肉＆グラタンコロッケ弁当", "1,100円", "弁当", "bento.png"], ["松花堂弁当", "1,100円", "弁当", "bento.png"], ["ミックスフライ弁当", "1,050円", "弁当", "bento.png"], ["ホームラン弁当", "1,000円", "弁当", "bento.png"], ["幕の内弁当～炊き込みご飯～", "1,000円", "弁当", "bento.png"], ["彩り弁当", "950円", "弁当", "bento.png"], ["とりめし～味噌だれ～", "950円", "弁当", "bento.png"], ["やきとり弁当", "950円", "弁当", "bento.png"], ["おむすび弁当", "830円", "弁当", "bento.png"], ["ミックスサンドBOX", "700円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_14 = Data(shopName: "いなば和幸", shopImage: UIImage(named: "Seibu_shop3_14.jpg")!, shopFoods: [["カツ重", "950円", "丼物", "donmono.png"], ["かつカレー", "950円", "カレー", "kare.png"], ["ひれかつ定食", "1,200円", "その他", "none.png"], ["ロースかつ定食", "1,100円", "その他", "none.png"], ["とん汁", "400円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_15 = Data(shopName: "竹國うどん", shopImage: UIImage(named: "Seibu_shop3_15.jpg")!, shopFoods: [["よくばりうどん・そば", "730円", "うどん", "udon.png"], ["カレーうどん・そば", "730円", "うどん", "udon.png"], ["かき揚げうどん・そば", "620円", "うどん", "udon.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_16 = Data(shopName: "新井園本店ライオンズ焼き3-18", shopImage: UIImage(named: "Seibu_shop3_16.jpg")!, shopFoods: [["ライオンズ焼き", "150円〜", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_17 = Data(shopName: "築地　銀だこ", shopImage: UIImage(named: "Seibu_shop3_17.jpg")!, shopFoods: [["ねぎマヨ(6個入り)", "650円", "たこ焼き", "takoyaki.png"], ["チーズ明太子(6個入り)", "650円", "たこ焼き", "takoyaki.png"], ["ねぎだこ(6個入り)", "650円", "たこ焼き", "takoyaki.png"], ["たこ焼き(6個入り)", "550円", "たこ焼き", "takoyaki.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_18 = Data(shopName: "カレーハウスCoCo壱番屋", shopImage: UIImage(named: "Seibu_shop3_18.jpg")!, shopFoods: [["カツカレー", "850円", "カレー", "kare.png"], ["フライドチキンカレー", "850円", "カレー", "kare.png"], ["ソーセージカレー", "850円", "カレー", "kare.png"], ["チーズカレー", "820円", "カレー", "kare.png"], ["ポークカレー", "600円", "カレー", "kare.png"], ["包みカレーナン", "350円", "その他", "none.png"], ["ハリケーンポテト", "250円", "ポテト", "poteto.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_19 = Data(shopName: "ケンタッキーフライドチキン", shopImage: UIImage(named: "Seibu_shop3_19.jpg")!, shopFoods: [["オリジナルチキン2ピース", "550円", "チキン", "chikin.png"], ["チキンフィレサンド", "450円", "ハンバーガー", "hanbaga.png"], ["和風カツサンド", "450円", "ハンバーガー", "hanbaga.png"], ["カーネリングポテト", "500円", "ポテト", "poteto.png"], ["ナゲット5ピース", "500円", "その他", "none.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_20 = Data(shopName: "新井園本店3-22", shopImage: UIImage(named: "Seibu_shop3_20.jpg")!, shopFoods: [["おかわり焼き", "730円", "お好み焼き", "okonomiyaki.png"], ["お好み焼き", "600円", "お好み焼き", "okonomiyaki.png"], ["ソース焼きそば", "500円", "焼きそば", "yakisoba.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_21 = Data(shopName: "UCC（ユーシーシー）", shopImage: UIImage(named: "Seibu_shop3_21.jpg")!, shopFoods: [["ソーセージ盛りラージ", "750円", "その他", "none.png"], ["ソーセージ盛り", "550円", "その他", "none.png"], ["ビッグドックチーズ", "520円", "ホットドック", "hottodokku.png"], ["ビッグドッグチリ", "520円", "ホットドック", "hottodokku.png"], ["ビッグドッグプレーン", "470円", "ホットドック", "hottodokku.png"], ["棒ヒレカツドッグ", "520円", "ホットドック", "hottodokku.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            let seibu_shop3_22 = Data(shopName: "サーティワンアイスクリーム", shopImage: UIImage(named: "Seibu_shop3_22.jpg")!, shopFoods: [["ポーションカップ＆レオカップ", "830円", "スイーツ", "sweets.png"], ["ヘルメットアイス", "650円", "スイーツ", "sweets.png"], ["ビジターヘルメットアイス", "650円", "スイーツ", "sweets.png"], ["アイスクリームレギュラー", "480円", "スイーツ", "sweets.png"], ["レギュラーアイスダブル", "600円", "スイーツ", "sweets.png"], ["ドーム焼き(クリーム)", "150円", "スイーツ", "sweets.png"], ["ドーム焼き(あんこ)", "150円", "スイーツ", "sweets.png"]], shopArea: "メットライフドーム　ドーム内3塁側")
            
            allShop.append(seibu_shop3_1)
            allShop.append(seibu_shop3_2)
            allShop.append(seibu_shop3_3)
            allShop.append(seibu_shop3_4)
            allShop.append(seibu_shop3_5)
            allShop.append(seibu_shop3_6)
            allShop.append(seibu_shop3_7)
            allShop.append(seibu_shop3_8)
            allShop.append(seibu_shop3_9)
            allShop.append(seibu_shop3_10)
            allShop.append(seibu_shop3_11)
            allShop.append(seibu_shop3_12)
            allShop.append(seibu_shop3_13)
            allShop.append(seibu_shop3_14)
            allShop.append(seibu_shop3_15)
            allShop.append(seibu_shop3_16)
            allShop.append(seibu_shop3_17)
            allShop.append(seibu_shop3_18)
            allShop.append(seibu_shop3_19)
            allShop.append(seibu_shop3_20)
            allShop.append(seibu_shop3_21)
            allShop.append(seibu_shop3_22)
            SeibuVC.allShop = allShop
            
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
