//
//  season4.swift
//  Gotham City e book
//
//  Created by 江培瑋 on 2017/12/5.
//  Copyright © 2017年 江培瑋. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
class season4: UIViewController {

    var avplayer = AVPlayer()
    var avplayercontroller = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sea4_act(_ sender: Any) {
        let filepath = Bundle.main.path(forResource: "Gotham Season 4 Dark Knight Trailer (HD)", ofType: "mp4")
        let sourceurl = URL(fileURLWithPath:filepath!)
        avplayer = AVPlayer(url: sourceurl)
        avplayercontroller.player = avplayer
        self.present(avplayercontroller, animated: true, completion: {
            self.avplayercontroller.player?.play()
        })    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
