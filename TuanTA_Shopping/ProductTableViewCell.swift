//
//  ProductTableViewCell.swift
//  TuanTA_Shopping
//
//  Created by Anh Tuấn Trương on 10/10/15.
//  Copyright © 2015 Anh Tuấn Trương. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    // Mark: Properties
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var addToCartButton: UIButton!
    @IBOutlet weak var productImage: UIImageView!
    
    
    
    // Mark: Auto generated

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
