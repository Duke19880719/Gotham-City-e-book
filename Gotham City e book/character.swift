//
//  character.swift
//  Gotham City e book
//
//  Created by 江培瑋 on 2017/12/5.
//  Copyright © 2017年 江培瑋. All rights reserved.
//

import UIKit

class character: UIViewController, UITableViewDataSource, UITableViewDelegate{
   
 
    var picture:[UIImage] = [#imageLiteral(resourceName: "s4"),#imageLiteral(resourceName: "g2"),#imageLiteral(resourceName: "g3"),#imageLiteral(resourceName: "g4"),#imageLiteral(resourceName: "g5"),#imageLiteral(resourceName: "g6"),#imageLiteral(resourceName: "g7")]
    var role_name:[String] = ["詹姆斯·高登", "奧斯華·科波特", "瑟琳娜·凱爾","費雪·穆妮","愛德華·尼格瑪", "哈維·布洛克","布魯斯·韋恩"]
    var picture1:[UIImage] = [#imageLiteral(resourceName: "詹姆斯·高登"),#imageLiteral(resourceName: "奧斯華·科波特"),#imageLiteral(resourceName: "瑟琳娜·凱爾"),#imageLiteral(resourceName: "費雪·穆妮"),#imageLiteral(resourceName: "愛德華·尼格瑪"),#imageLiteral(resourceName: "哈維·布洛克"),#imageLiteral(resourceName: "布魯斯·韋恩")]
    var role_info:[String] = ["警察局的資深警探，為人正直、機智、嫉惡如仇，虛榮心重，不達到目的決不罷休，在接手韋恩夫婦謀殺案的同時，也開始打擊城市的腐敗犯罪。其父親過去是城市的最好檢察官直到車禍身亡，參加完戰爭回到家鄉而打算以捍衛正義來紀念父親。從一個小警察爬到了警察工會主席的位置，無論如何就是不肯對惡勢力低頭，但久而久之在惡勢力的影響下開始走向極端。一時衝動槍殺了仇人後開始被罪惡感折磨，之後還被人陷害關進監獄。最後雖然成功洗刷了冤屈，並幫助布魯斯解開了多數謎題，但在愛情與工作上遭受雙重打擊下，開始自暴自棄成為了獨行俠。和傑維斯·泰奇結下仇後被他下了致幻藥，在潛意識幻覺中得到已故父親的點醒才徹底從陰霾裡醒悟，被救醒後找回了使命而重回了警界。疏遠多年的叔叔法蘭克的迴歸使他牽扯進貓頭鷹法庭的計畫中，在叔叔被迫自殺後代替了他潛伏進法庭內部。而後遭到感染了泰奇病毒的萊絲莉設計而同樣感染了病毒，但最後仍然找回了自我，用解藥治癒了他自己和萊絲莉。",
    "一位走路瘸腿、能說會道的黑幫老大，有戀母情結，剛出道時只是一個遊走黑白兩道之間的告密者，貪生怕死卻足智多謀，利用高超口才造成黑幫互相黑吃黑，最後如願以償地掌控了城市犯罪網。但後來被希歐·蓋勒文盯上而導致母親被他殺害，逃離掌控後和高登聯手殺了他，之後便背負著殺人罪被關進阿卡漢。遭受精神治療後一度根除了暴力傾向，被釋放後在母親的墓前首遇了父親伊萊亞，但父親不久後卻被養母害死，導致暴力傾向再度迴歸，殘殺了養母和養家族風雲後回去了城市。通過領軍殲滅實驗逃犯後，被人民支持而當選了城市新任市長。無意間愛上了「願意為他效勞」的尼格瑪後，為了得到他而設計害死了他的第二任戀人；從 UIViewControllerAnimatedTransitioning此導致他們倆友情決裂，被尼格瑪陷害害到身敗名裂，還被他開槍墜入海裏，僥倖被艾薇打撈上來後活了下來，便開始和艾薇實施復仇大計，最後成功擊敗所有敵人、並決定圓穆妮的心願而開辦「冰山俱樂部」，重新掌控惡勢力並開始實施「工會化」。",
    "一位遊走在城市街頭的小偷，外號「小貓」，年紀輕輕卻有高超的偷盜手法，能一瞬間偷走目標的財物。曾經親眼目睹過韋恩夫婦的謀殺案，也從此開始對布魯斯產生興趣，之後成為了他的夥伴，保持了一段時間的戀愛關係，與布魯斯的關係有時默契十足、也有時候背道而馳。自從跟在穆妮身邊之後開始學會往上爬，有時會跟黑道打交道。後來母親的迴歸使她不知所措，但之後卻發現她只是假模假樣地回來騙錢、加上布魯斯對此知情卻選擇對她隱瞞這件事，而和他們決裂後迴歸暗道，找到了塔比莎來學習武藝技巧。"
        ,"一位趾高氣昂、兇狠殘暴的黑幫大姐頭，隸屬法爾康尼黑幫家族，經營一家地下俱樂部。迷人又殘暴的魅力吸引了不少忠誠支持者，會想盡辦法剷除任何羞辱、阻擋自己的人。多年來想方設法打算奪取法爾康尼的位置，但一直被奧斯華暗中阻撓，就連最後使出的賤招也在他的挑撥離間下破壞，被奧斯華親手推進了河中而身亡。屍體被打撈上來後送至印第安山脈，在雨果的技術下復活，並在警察破獲實驗室時逃了出去，並召集了所有實驗逃犯作為軍隊。經過一段時間後趁城市爆發病毒危機時迴歸，本想靠雨果和奧斯華來征服城市，但最後被因感染病毒而失控的高登一刀刺穿腹部而死，死前將遺願交付給奧斯華後結束了一生。"
        ,"警察局的前任鑑識組長，頭腦卓越，熱愛猜謎語，由於性格怪異而人緣不好。唯獨暗戀著警局證物室的總監—克莉絲汀·克琳格，一次為了保護她而拿刀殺了他的暴力男友，好不容易和她交往了一陣後對她坦誠了殺人事實，為阻止她逃跑而不慎掐死了她，從此陷入精神崩潰後開始步入黑暗。結識了奧斯華後在他身上學到了殺人的本領，為了掩蓋克莉絲汀的死而不惜陷害高登，但最後還是被高登抓到現行而被關進阿卡漢，在裏面試圖和雨果·史特蘭奇結盟卻沒奏效。關了一陣子後被競選市長的奧斯華協助釋放，幫助他光明正大地奪下市長職位，但未知奧斯華已經愛上了自己，剛交到的戀人伊莎貝拉被奧斯華設計而殺害，於是只能和芭芭拉結盟來實施報復。槍擊奧斯華、報完殺愛之仇後開始投靠自己的陰暗面，以新身份「謎語人」來在城市作亂。得知奧斯華活下來後還是決定去殺他，卻不慎聰明反被聰明誤，最後被奧斯華凍成「冰山」後做成裝飾及警醒。冷凍了數個月後被一位癡迷於他的瘋狂粉絲救出，但因腦細胞受損而智力減退，最後連奧斯華都嫌棄他。無處可去又一無是處之下，他重遇重獲新生的布奇，但同時發現他已經變成所羅門·格蘭迪。和他來到奈何島的格鬥場想賺外快，但隨著格蘭迪因打鬥而漸漸成名之下，升為格鬥場的主持者。"
        ,"高登的最好搭檔及摯友，手段強硬、作風卻略為輕浮的資深警探，雖然在外跟黑道有往來，但為人卻十分仗義，面對困難決不退縮。首次遇見高登時由於想法對不上而經常與他鬥嘴，但久而久之後就被激起當年的熱情，也成為了高登最不可少的夥伴。因為警局的領導者相繼失去，資歷最高的他而被同事們封為代理警監而開始指揮整間警局。但自從企鵝人開始實行分發違法執照後，他選擇對惡勢力低頭而收受企鵝人的賄賂，和高登的友情也因此不如以往、發生過多次衝突。在奈何島緝拿豬教授的行動中因為不聽勸阻，導致警察隊伍遭到災難性打擊，從那之後他便顏面掃地、一蹶不振，警監的職位也被迫讓給高登擔任。"
            ,"韋恩夫婦的獨子，年僅十歲就目睹了父母雙雙被槍殺，得到高登的安慰後開始靠自己所能來尋找真相，開始接受嚴格訓練來增強體能和武藝。久而久之也開始從嬌生慣養變得十分精明能幹，企圖挖開韋恩企業的內幕而為父親申冤。經歷了多次生死一瞬間後，成功找到了殺害父母的真兇，選擇饒他一命後卻目睹他吞槍自殺身亡，於是開始用自己的力量和惡勢力鬥爭。深入調查父母命案而無意間牽扯進貓頭鷹法庭的黑幕，被幕後領袖注意到後遭到綁架並洗腦，成為領袖的最好門徒。因為阿福的介入而最終找回自我，並決定以所學知識當上一位「夜間義警」。在對抗忍者大師的鬥爭中被迫做出痛苦決定，之後開始靠派對狂歡來消遣他的創傷陰影，和阿福的關係也因此受挫。"
                            ]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return picture.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell
        cell.rolename.text = role_name[indexPath.row]
        cell.img1.image = picture[indexPath.row]
        return cell
    }
    

    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func backtomain(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue1" {
            if let index = tableview.indexPathForSelectedRow{
             let  segued = segue.destination as! role1
            segued.name1 = role_name[index.row]
            segued.tempimage = picture1[index.row]
            segued.roleinfo = role_info[index.row]
            }
        }
    }
}

