//
//  TableViewCell.swift
//  Gotham City e book
//
//  Created by 江培瑋 on 2017/12/5.
//  Copyright © 2017年 江培瑋. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {


    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var rolename: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
