//
//  ViewController.swift
//  Gotham City e book
//
//  Created by 江培瑋 on 2017/11/27.
//  Copyright © 2017年 江培瑋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var bt1: UIButton!
    @IBOutlet weak var bt2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title1.alpha = 0
        bt1.alpha = 0
        bt2.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2, animations:
            {
                self.title1.alpha = 1
                
        })
        UIView.animate(withDuration: 4, animations:
            {
                self.bt1.alpha = 1
                
        })
        UIView.animate(withDuration: 5, animations:
            {
                self.bt2.alpha = 1
        })
        
    }

}

