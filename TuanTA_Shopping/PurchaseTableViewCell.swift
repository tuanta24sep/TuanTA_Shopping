//
//  PurchaseTableViewCell.swift
//  TuanTA_Shopping
//
//  Created by Anh Tuấn Trương on 10/10/15.
//  Copyright © 2015 Anh Tuấn Trương. All rights reserved.
//

import UIKit

class PurchaseTableViewCell: UITableViewCell {
    // Mark: Properties
    @IBOutlet weak var pProductImage: UIImageView!
    
    @IBOutlet weak var pProductName: UILabel!
    
    @IBOutlet weak var pProductPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
