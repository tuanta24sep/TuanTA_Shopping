//
//  Product.swift
//  TuanTA_Shopping
//
//  Created by Anh Tuấn Trương on 10/10/15.
//  Copyright © 2015 Anh Tuấn Trương. All rights reserved.
//

import UIKit
class Product{
    var name: String
    var price: String
    var image: UIImage?
    
    init(name: String, price: String, image: UIImage?){
        self.name = name
        self.price = price
        self.image = image
    }
}
