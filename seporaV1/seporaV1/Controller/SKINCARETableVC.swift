//
//  SKINCARETableVC.swift
//  seporaV1
//
//  Created by Raghad Alahmadi on 27/03/1443 AH.
//

import UIKit


class SKINCARETableVC: UITableViewController, SCartDelegate {
    var shop : SeporaShops!
    
    func AddToCart(index: Int) {
        SproductCart.append(Sproduct[index])
    }
    
    var Sproduct : [SkincareShop]!
    
   
    var SproductCart = [SkincareShop]()
    var cellIndex = 0
    override func viewWillAppear(_ animated: Bool) {
        Sproduct = shop.SkincareProducts
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Sproduct = shop.SkincareProducts

        tableView.register(UINib(nibName: "TSKINCAREBANNERTableViewCell", bundle: nil), forCellReuseIdentifier: "SBannerID")
        
        
        tableView.register(UINib(nibName: "SKINCAREITEMTableViewCell", bundle: nil), forCellReuseIdentifier: "SItemID")
        tableView.rowHeight = 160
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return 1
        } else {
            return Sproduct.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
        let cellSBanner = tableView.dequeueReusableCell(withIdentifier: "SBannerID") as! TSKINCAREBANNERTableViewCell
        
            return cellSBanner
            
        }
        else {
   let cellSProduct = tableView.dequeueReusableCell(withIdentifier: "SItemID") as! SKINCAREITEMTableViewCell
            
            
            cellSProduct.SItemName.text = Sproduct[indexPath.row].Sname
            cellSProduct.SItemDec.text = Sproduct[indexPath.row].Sdec
            cellSProduct.SItemCost.text = String(Sproduct[indexPath.row].Scost)
            cellSProduct.SItemImage.image = Sproduct[indexPath.row].Simage
            cellSProduct.myIndex = indexPath.row
            cellSProduct.delegate = self
            return cellSProduct
        }
    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cellIndex = indexPath.row
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            Sproduct.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        } else if editingStyle == .insert {
//            tableView.reloadData()
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }    
//    }
   

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation


    
    
    
    

}
