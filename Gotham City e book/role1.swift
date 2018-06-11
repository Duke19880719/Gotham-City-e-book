//
//  role1.swift
//  Gotham City e book
//
//  Created by 江培瑋 on 2017/12/7.
//  Copyright © 2017年 江培瑋. All rights reserved.
//

import UIKit
import Darwin
class role1: UIViewController {
   
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var role_display: UITextView!
    @IBOutlet weak var background: UIImageView!
 
    
   
    var tempimage:UIImage?
    var name1:String = ""
    var roleinfo:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        
    name.text = name1
    role_display.text = roleinfo
    background.image = tempimage
      
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
