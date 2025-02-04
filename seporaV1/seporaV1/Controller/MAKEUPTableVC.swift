//
//  MAKEUPTableVC.swift
//  seporaV1
//
//  Created by Raghad Alahmadi on 27/03/1443 AH.
//

import UIKit


class MAKEUPTableVC: UITableViewController, MCartDelegate {

    func AddToCart(index: Int) {
       MproductCart.append(Mproduct[index])
    }
    var curIndex = 0
    var shop : SeporaShops!
    var Mproduct : [MakeupShop]!
 
    var MproductCart = [MakeupShop]()
    override func viewWillAppear(_ animated: Bool) {
        Mproduct = shop.MakeupProducts

        tableView.reloadData()
        print(Mproduct)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Mproduct = shop.MakeupProducts
        tableView.register(UINib(nibName: "MAKEUPBANNERTableViewCell", bundle: nil), forCellReuseIdentifier: "MBannerID")
        
        
        tableView.register(UINib(nibName: "MAKEUPITEMTableViewCell", bundle: nil), forCellReuseIdentifier: "MItemID")
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
            return Mproduct.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.section == 0 {
        let cellBanner = tableView.dequeueReusableCell(withIdentifier: "MBannerID") as! MAKEUPBANNERTableViewCell
        
            return cellBanner
            
        }
        else {
   let cellMProduct = tableView.dequeueReusableCell(withIdentifier: "MItemID") as! MAKEUPITEMTableViewCell
            
            
            cellMProduct.MItemName.text = Mproduct[indexPath.row].Mname
            
            cellMProduct.MItemDec.text = Mproduct[indexPath.row].Mdec
            
            cellMProduct.MItemCost.text = String(Mproduct[indexPath.row].Mcost)
            cellMProduct.MItemImage.image = Mproduct[indexPath.row].Mimage
            cellMProduct.myIndex = indexPath.row
            cellMProduct.delegate = self
            return cellMProduct
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        curIndex = indexPath.row
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
//            Mproduct.remove(at: indexPath.row)
//            
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        } else if editingStyle == .insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }
//        tableView.reloadData()
//    }
//    

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToCart"{
            let cartVC = segue.destination as! CartTableVC
            cartVC.MproductCart = MproductCart
        } else if segue.identifier == "goToNewProduct" {
            let addVC = segue.destination as! AddViewController
            addVC.sepShop = shop
        }
 
    }
}
