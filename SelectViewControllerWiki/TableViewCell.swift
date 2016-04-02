//
//  TableViewCell.swift
//  SelectViewControllerWiki
//
//  Created by 矢野史洋 on 2016/04/02.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
