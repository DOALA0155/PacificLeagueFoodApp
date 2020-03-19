//
//  SearchViewController.swift
//  pacificStadiumFood
//
//  Created by 勝山翔紀 on 2019/09/22.
//  Copyright © 2019 勝山翔紀. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate{


    var allData: [Array<String>] = []
    var searchResults: Array<Int> = []
    var allShop: [Data] = []
    var searchResult: [String] = []
    var allSearchResultData: [Data] = []
    @IBOutlet weak var ShopSearchBar: UISearchBar!
    @IBOutlet weak var ShopSearchTableView: UITableView!
    
    let yafuoku_shop12_1 = Data(shopName: "アジアンデリ＆キッチン", shopImage: UIImage(named: "yafuoku_shop12_1.jpg")!, shopFoods: [["内川選手のグリーンヒットカレー", "950円", "カレー", "kare.png"], ["ビーフステーキのブラックアイス〜黒醤油風味〜", "1,100円", "丼物", "donmono.png"], ["ガイガパオ", "850円", "その他", "none.png"], ["パーコー飯", "950円", "丼物", "donmono.png"], ["アジアンデリプレート（カオマンガイ＆タッカルビ）", "1,000円", "その他", "none.png"], ["アジアンデリプレート（ガパオライス＆チヂミ）", "1,000円", "その他", "none.png"], ["アジアンデリプレート（パーコー飯＆唐揚げ）", "1,000円", "その他", "none.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
    let yafuoku_shop12_2 = Data(shopName: "フレッシュネスバーガー", shopImage: UIImage(named: "yafuoku_shop12_2.jpg")!, shopFoods: [["ローストビーフバーガー", "980円", "ハンバーガー", "hanbaga.png"], ["ロングポテト 塩コショウ味", "600円", "ポテト", "poteto.png"], ["インド風 スパイスチキンカレー", "700円", "カレー", "kare.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
    let yafuoku_shop12_3 = Data(shopName: "サブウェイ", shopImage: UIImage(named: "yafuoku_shop12_3.jpg")!, shopFoods: [["甲斐選手のたまごBLT", "620円", "ホットドック", "hottodokku.png"], ["甲斐選手のハニーマスタードゴールデンポテト", "950円（メットなし：750円）", "ポテト", "poteto.png"], ["森投手のお肉３倍もりもりローストビーフ", "1,000円", "ホットドック", "hottodokku.png"], ["デスパイネ選手のアボカドディップポテト", "980円（メットなし：780円）", "ポテト", "poteto.png"], ["金格バーグデラックス", "1,080円", "ホットドック", "hottodokku.png"], ["クリームチーズチキンロール（バジルチキン）", "560円", "その他", "none.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
    let yafuoku_shop12_4 = Data(shopName: "鉄板酒場　徹一", shopImage: UIImage(named: "yafuoku_shop12_4.jpg")!, shopFoods: [["昔ながらの鉄板ソース焼きそば", "650円", "焼きそば", "yakisoba.png"], ["厚切り豚丼", "850円", "丼物", "donmono.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
    let yafuoku_shop12_5 = Data(shopName: "スタ飯ラボ１", shopImage: UIImage(named: "yafuoku_12_5.jpg")!, shopFoods: [["武田投手のチキン南蛮", "1,000円", "丼物", "donmono.png"], ["ポテチキ", "450円", "ポテト", "poteto.png"], ["蜂の家カツカレー", "880円", "カレー", "kare.png"], ["たれカツ丼", "850円", "丼物", "donmono.png"], ["フロートメロン", "450円", "スイーツ", "sweets.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
    let yafuoku_shop12_6 = Data(shopName: "コカ・コーラショップ", shopImage: UIImage(named: "yafuoku_shop12_6.jpg")!, shopFoods: [["今宮選手の和風ハンバーグライスバーガー", "900円", "ハンバーガー", "hanbaga.png"], ["ホットチーズポテトフライ", "600円", "ポテト", "poteto.png"], ["チキン＆ソーセージ＆ポテト", "750円", "ポテト", "poteto.png"], ["メガヘルメットポップコーン（塩バター）", "1,500円", "ポップコーン", "poppukonn.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
    let yafuoku_shop12_7 = Data(shopName: "ピエトロパスタミオミオ", shopImage: UIImage(named: "yafuoku_shop12_7.jpg")!, shopFoods: [["ミオミオサラダパスタ", "410円", "サラダ", "sarada.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
    let yafuoku_shop12_8 = Data(shopName: "FUKUOKA CRAFT", shopImage: UIImage(named: "yafuoku_shop12_8.jpg")!, shopFoods: [["チリドック", "900円", "ホットドック", "hottodokku.png"], ["タコライス", "880円", "その他", "none.png"], ["ソフトクリーム", "580円", "スイーツ", "sweets.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
    let yafuoku_shop12_9 = Data(shopName: "肉山福岡", shopImage: UIImage(named: "yafuoku_shop12_9.jpg")!, shopFoods: [["肉山ロースステーキ丼", "1,300円", "丼物", "donmono.png"], ["肉山カレー", "850円（ハーフ 600円）", "カレー", "kare.png"], ["石川投手の2929(にくにく)さがりステーキカレー", "1,600円", "カレー", "kare.png"], ["ilsoleジェラート(定番)", "300円", "スイーツ", "sweets.png"]], shopArea: "ヤフオクドーム　1,2GATE(2~9通路)")
    let yafuoku_shop34_1 = Data(shopName: "ホークスカフェ１", shopImage: UIImage(named: "yafuoku_shop34_1.jpg")!, shopFoods: [["川島選手の佐世保バーガーＢＯＸ", "1,000円", "ハンバーガー", "hanbaga.png"], ["中村選手のブレッドポット（タンシチュー）", "1,000円", "その他", "none.png"], ["コブサラダフレンチトースト", "900円", "その他", "none.png"], ["メガヘルメットホットチーズナチョス", "2,000円", "その他", "none.png"], ["ヘルメットポテトチップ＆アメリカンドッグ", "850円", "その他", "none.png"], ["プレミアムソフト　クレミア", "500円", "スイーツ", "sweets.png"], ], shopArea: "ヤフオクドーム　3,4GATE(11~18通路)")
    let yafuoku_shop34_2 = Data(shopName: "ホークスカフェ２", shopImage: UIImage(named: "yafuoku_shop34_2.jpg")!, shopFoods: [["甲斐選手のオムキャノン", "1,000円", "丼物", "donmono.png"], ["松田選手のステーキ丼", "1,100円", "丼物", "donmono.png"], ["カツカレー", "850円", "カレー", "kare.png"], ["牛ロースとチキン南蛮のコンボ", "950円", "丼物", "donmono.png"], ["おつまみ盛り合わせ", "700円", "その他", "none.png"], ["豚バラ串", "600円", "焼き鳥", "yakitori.png"], ["国産牛串", "900円", "焼き鳥", "yakitori.png"], ["鶏串", "600円", "焼き鳥", "yakitori.png"], ], shopArea: "ヤフオクドーム　3,4GATE(11~18通路)")
    let yafuoku_shop34_3 = Data(shopName: "ホークスカフェ３", shopImage: UIImage(named: "yafuoku_shop34_3.jpg")!, shopFoods: [["川島選手のレモンステーキプレート", "1,100円", "丼物", "donmono.png"], ["東浜投手の沖縄そば", "850円", "ラーメン", "ramen.png"], ["ソースカツ焼きそば", "950円", "焼きそば", "yakisoba.png"], ["ヘルメットカリーヴルスト＆ポテト", "800円", "ポテト", "poteto.png"], ["おつまみ盛り合わせ", "700円", "その他", "none.png"]], shopArea: "ヤフオクドーム　3,4GATE(11~18通路)")
    let yafuoku_shop34_4 = Data(shopName: "モスバーガー", shopImage: UIImage(named: "yafuoku_shop34_4.jpg")!, shopFoods: [["柳田選手のトリプル。ギータバーガー", "770円", "ハンバーガー", "hanbaga.png"], ["モスバーガー", "400円", "ハンバーガー", "hanbaga.png"], ["海老カツバーガー", "410円", "ハンバーガー", "hanbaga.png"], ["ロースカツバーガー", "410円", "ハンバーガー", "hanbaga.png"], ["和風チキンバーガー", "380円", "ハンバーガー", "hanbaga.png"]], shopArea: "ヤフオクドーム　3,4GATE(11~18通路)")
    let yafuoku_shop56_1 = Data(shopName: "ラーメン二郎坊", shopImage: UIImage(named: "yafuoku_shop56_1.jpg")!, shopFoods: [["味付半熟煮玉子らーめん", "800円", "ラーメン", "ramen.png"], ["博多ひとくちぎょうざ（8個）", "500円", "餃子","gyoza.png"]], shopArea: "ヤフオクドーム　5,6GATE(20~26通路)")
    let yafuoku_shop56_2 = Data(shopName: "スタ飯ラボ５", shopImage: UIImage(named: "yafuoku_shop56_2.jpg")!, shopFoods: [["内川選手の鶏天", "550円", "チキン", "chikin.png"], ["上林選手のモンスタ丼", "850円", "丼物", "donmono.png"], ["もりもりスナックBOX", "1,000円", "ポテト", "poteto.png"], ["ソースチキンカツ丼", "850円", "丼物", "donmono.png"]], shopArea: "ヤフオクドーム　5,6GATE(20~26通路)")
    let yafuoku_shop56_3 = Data(shopName: "サブウェイ", shopImage: UIImage(named: "yafuoku_shop56_3.jpg")!, shopFoods: [["甲斐選手のたまごBLT", "620円", "ホットドック", "hottodokku.png"], ["甲斐選手のハニーマスタードゴールデンポテト", "950円（メットなし：750円）", "ポテト", "poteto.png"], ["森投手のお肉３倍もりもりローストビーフ", "1,000円", "ホットドック", "hottodokku.png"], ["デスパイネ選手のアボカドディップポテト", "980円（メットなし：780円）", "ポテト", "poteto.png"], ["金格バーグデラックス", "1,080円", "ホットドック", "hottodokku.png"], ["クリームチーズチキンロール（バジルチキン）", "560円", "その他", "none.png"]], shopArea: "ヤフオクドーム　5,6GATE(20~26通路)")
    let yafuoku_shop56_4 = Data(shopName: "ケンタッキーフライドチキン", shopImage: UIImage(named: "yafuoku_shop56_4.jpg")!, shopFoods: [["選べる1,000円パックＳ", "1,000円", "チキン", "chikin.png"], ["工藤監督の味噌カツサンド", "500円", "ハンバーガー", "hanbaga.png"], ["今宮選手の今宮ケンタ丼", "850円", "丼物", "donmono.png"], ["ケイジャン風味ポップコーンチキン", "500円", "chikin", ".png"]], shopArea: "ヤフオクドーム　5,6GATE(20~26通路)")
    let yafuoku_shop56_5 = Data(shopName: "ピエトロパスタミオミオ", shopImage: UIImage(named: "yafuoku_shop56_5.jpg")!, shopFoods: [["ミオミオサラダパスタ", "410円", "サラダ", "sarada.png"]], shopArea: "ヤフオクドーム　5,6GATE(20~26通路)")
    let yafuoku_shop56_6 = Data(shopName: "ディッパーダン", shopImage: UIImage(named: "yafuoku_shop56_6.jpg")!, shopFoods: [["糸島野菜サラダ", "600円", "サラダ", "sarada.png"], ["イチゴバナナカスタードチョコ", "500円", "スイーツ", "sweets.png"], ["岩嵜投手のピーナッツヘルメットサンデー", "650円", "スイーツ", "sweets.png"], ["甲斐選手のかぼすヘルメットサンデー", "650円", "スイーツ", "sweets.png"], ["削りイチゴ", "500円", "スイーツ", "sweets.png"], ["デコソフト　マンゴー", "700円", "スイーツ", "sweets.png"], ["フルーツソフト", "600円", "スイーツ", "sweets.png"], ["ハッピーシェアアイス", "1,500円", "スイーツ", "sweets.png"], ["プレミアムドリンク　果実の恵みソーダ", "700円", "スイーツ", "sweets.png"], ["タピオカリッチミルクティ", "600円", "スイーツ", "sweets.png"]], shopArea: "ヤフオクドーム　5,6GATE(20~26通路)")
    let yafuoku_shop78_1 = Data(shopName: "とめ手羽", shopImage: UIImage(named: "yafuoku_shop78_1.jpg")!, shopFoods: [["上林選手のテリマヨ丼", "800円", "丼物", "donmono.png"], ["ささみチーズ勝つ丼", "900円", "丼物", "donmono.png"], ["メガ勝どき揚げ丼", "1,500円", "丼物", "donmono.png"], ["鶏やげん軟骨の唐揚げ", "600円", "唐揚げ", "karaage.png"], ["名物とめ手羽", "3本盛 700円", "チキン", "chikin.png"]], shopArea: "ヤフオクドーム　7,8GATE(28~32通路)")
    let yafuoku_shop78_2 = Data(shopName: "スタジアム横丁", shopImage: UIImage(named: "yafuoku_shop78_2.jpg")!, shopFoods: [["ハムカツ", "400円", "none", "none.png"], ["冷奴(ザーサイ)", "400円", "none", "none.png"], ["茄子と豚バラの黒酢味噌炒め", "400円", "none", "none.png"], ["串揚げ4本盛り", "400円", "none", "none.png"], ["唐揚げとごぼうの甘辛煮", "400円", "唐揚げ", "karaage.png"], ["炭火鶏のねぎポン酢あえ", "400円", "none", "none.png"]], shopArea: "ヤフオクドーム　7,8GATE(28~32通路)")
    let yafuoku_shop78_3 = Data(shopName: "京都勝牛", shopImage: UIImage(named: "yafuoku_shop78_3.jpg")!, shopFoods: [["松田選手の厚切り牛カツとローストビーフ丼", "1,850円", "丼物", "donmono.png"], ["牛カツ丼", "1,250円", "丼物", "donmono.png"], ["ローストビーフ丼", "950円", "丼物", "donmono.png"], ["勝牛ホームラン丼", "1,350円", "丼物", "donmono.png"], ["一口牛カツカップ", "600円", "その他", "none.png"], ["アイススモア", "500円", "スイーツ", "sweets.png"]], shopArea: "ヤフオクドーム　7,8GATE(28~32通路)")
    let yafuoku_shop78_4 = Data(shopName: "モスバーガー", shopImage: UIImage(named: "yafuoku_shop78_4.jpg")!, shopFoods: [["柳田選手のトリプル。ギータバーガー", "770円", "ハンバーガー", "hanbaga.png"], ["モスバーガー", "400円", "ハンバーガー", "hanbaga.png"], ["海老カツバーガー", "410円", "ハンバーガー", "hanbaga.png"], ["ロースカツバーガー", "410円", "ハンバーガー", "hanbaga.png"], ["和風チキンバーガー", "380円", "ハンバーガー", "hanbaga.png"]], shopArea: "ヤフオクドーム　7,8GATE(28~32通路)")
    let yafuoku_shop78_5 = Data(shopName: "焼きバルももち", shopImage: UIImage(named: "yafuoku_shop78_5.jpg")!, shopFoods: [["柳田選手のギータ焼", "1,000円", "丼物", "donmono.png"], ["ウィンナー盛り", "650円", "その他", "none.png"], ["豚ばら串", "480円", "焼き鳥", "yakitori.png"], ["牛さがり串", "550円", "焼き鳥", "yakitori.png"], ["ソフトアイスソーダ", "380円", "スイーツ", "sweets.png"]], shopArea: "ヤフオクドーム　7,8GATE(28~32通路)")
    let yafuoku_shop78_6 = Data(shopName: "ごぜん", shopImage: UIImage(named: "yafuoku_shop78_6.jpg")!, shopFoods: [["ネギたこ焼き", "550円", "たこ焼き", "takoyaki.png"], ["メガ盛ポテト", "650円", "ポテト", "poteto.png"], ["肉うどん", "680円", "うどん", ".png"], ["かしわうどん", "650円", "うどん", "udon.png"], ["ホークスうどん", "700円", "うどん", "udon.png"], ["トッピング", "各種 150円～200円", "その他", "none.png"]], shopArea: "ヤフオクドーム　7,8GATE(28~32通路)")
    
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
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        allShop.append(yafuoku_shop12_1)
        allShop.append(yafuoku_shop12_2)
        allShop.append(yafuoku_shop12_3)
        allShop.append(yafuoku_shop12_4)
        allShop.append(yafuoku_shop12_5)
        allShop.append(yafuoku_shop12_6)
        allShop.append(yafuoku_shop12_7)
        allShop.append(yafuoku_shop12_8)
        allShop.append(yafuoku_shop12_9)
        allShop.append(yafuoku_shop34_1)
        allShop.append(yafuoku_shop34_2)
        allShop.append(yafuoku_shop34_3)
        allShop.append(yafuoku_shop34_4)
        allShop.append(yafuoku_shop56_1)
        allShop.append(yafuoku_shop56_2)
        allShop.append(yafuoku_shop56_3)
        allShop.append(yafuoku_shop56_4)
        allShop.append(yafuoku_shop56_5)
        allShop.append(yafuoku_shop56_6)
        allShop.append(yafuoku_shop78_1)
        allShop.append(yafuoku_shop78_2)
        allShop.append(yafuoku_shop78_3)
        allShop.append(yafuoku_shop78_4)
        allShop.append(yafuoku_shop78_5)
        allShop.append(yafuoku_shop78_6)
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
        
        
        
        for shops in allShop{
            var all: Array<String> = []
            for food in shops.shopFoods{
                var foodData = food as! Array<String>
                let shopData: String = shops.shopArea + shops.shopName + foodData[0] + foodData[2]
                all.append(shopData)
           
        }
            if allData.contains(all) == false{
                allData.append(all)
            }

        }
        ShopSearchTableView.dataSource = self
        ShopSearchTableView.delegate = self
        ShopSearchTableView.register(UINib(nibName: "ShopTableViewCell", bundle: nil), forCellReuseIdentifier: "ShopTableViewCell")
        ShopSearchBar.delegate = self
        ShopSearchBar.showsCancelButton = true



        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return allSearchResultData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShopTableViewCell", for: indexPath) as! ShopTableViewCell
        
        cell.shopImage.image = allSearchResultData[indexPath.section].shopImage
        cell.shopName.text = allSearchResultData[indexPath.section].shopName
        cell.layer.cornerRadius = 50
        cell.layer.masksToBounds = true
        if (allSearchResultData[indexPath.section].shopArea).contains("ヤフオクドーム"){
            cell.shopName.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 0, alpha: 0.7)
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 950

    }
    func searchShops(searchText: String){
        allSearchResultData.removeAll()
        searchResults.removeAll()
        if searchText != ""{
            for (i, data) in allData.enumerated(){
                for foodData in data{
                    if foodData.contains(searchText){
                        if searchResults.contains(i) == false{
                            searchResults.append(i)
                        }
                    }
                }
            }
        }
        else{
            for (i, _) in allData.enumerated(){
                searchResults.append(i)
            }
        }
        if searchResults.isEmpty == false{
            for search in searchResults{
                let searchResultData = allShop[search]
                if allSearchResultData.contains(searchResultData) == false{
                    allSearchResultData.append(searchResultData)
                }
            }
        
            
        }
        ShopSearchTableView.reloadData()
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
        searchShops(searchText: searchText)
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        ShopSearchBar.text = ""
        self.view.endEditing(true)
        allSearchResultData = allShop
        ShopSearchTableView.reloadData()
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.view.endEditing(true)
        searchShops(searchText: ShopSearchBar.text! as String)
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
        performSegue(withIdentifier: "toSearchCellView", sender: [allSearchResultData[indexPath.section].shopName, allSearchResultData[indexPath.section].shopImage, allSearchResultData[indexPath.section].shopFoods, allSearchResultData[indexPath.section].shopArea])
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSearchCellView"{
            let searchCellVC = segue.destination as! SearchCellViewController
            searchCellVC.shop = sender as! Array<Any>
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
