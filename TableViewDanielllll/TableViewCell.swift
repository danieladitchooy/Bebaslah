//
//  TableViewCell.swift
//  TableViewDanielllll
//
//  Created by Daniel Aditya Kurniawan on 21/08/19.
//  Copyright © 2019 Daniel Aditya Kurniawan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var gambar: UIImageView!
    
    @IBOutlet var lblName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
//    class CheckableTableViewCell: UITableViewCell {
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            self.selectionStyle = .none
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
        }
        
        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
            self.accessoryType = selected ? .checkmark : .none
        }
//    }

}
