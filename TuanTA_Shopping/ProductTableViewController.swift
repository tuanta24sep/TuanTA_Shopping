//
//  ProductTableViewController.swift
//  TuanTA_Shopping
//
//  Created by Anh Tuấn Trương on 10/10/15.
//  Copyright © 2015 Anh Tuấn Trương. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {
    // Mark: Properties
    var products = [Product]()
    var purProducts = [Product]()
    @IBOutlet weak var Purchase: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        loadProducts()
    }
    
    
    func loadProducts(){
        let photo1 = UIImage(named: "Image1")
        let photo2 = UIImage(named: "Image2")
        let photo3 = UIImage(named: "Image3")
        let photo4 = UIImage(named: "Image4")
        let photo5 = UIImage(named: "Image5")
        
        let product1 = Product(name: "Hamburger", price: "100.000 vnd", image: photo1)
        let product2 = Product(name: "Mid Autumn Paiting", price: "200.000 vnd", image: photo2)
        let product3 = Product(name: "Doll", price: "300.000 vnd", image: photo3)
        let product4 = Product(name: "Sticked cheese", price: "400.000 vnd", image: photo4)
        let product5 = Product(name: "Fried rice", price: "500.000 vnd", image: photo5)
        
        products += [product1, product2, product3, product4, product5]
        
    }
    
    var point = Int()
    @IBAction func addToCartAction(sender: UIButton) {
        let pointInTable: CGPoint =         sender.convertPoint(sender.bounds.origin, toView: self.tableView)
        let cellIndexPath = self.tableView.indexPathForRowAtPoint(pointInTable)
        point = cellIndexPath!.row
        
        purProducts.append(products[point])
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return products.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "ProductTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ProductTableViewCell
        let product = products[indexPath.row]
        cell.productNameLabel.text = product.name
        cell.priceLabel.text = "" + product.price
        cell.productImage.image = product.image

        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    


    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "PurchaseSegue")
        {
            let purViewController = (segue.destinationViewController as! PurchaseTableViewController)
            purViewController.purchaseProducts = purProducts
        }
    }
}
