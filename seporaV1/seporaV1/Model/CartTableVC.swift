//
//  CartTableVC.swift
//  seporaV1
//
//  Created by Raghad Alahmadi on 28/03/1443 AH.
//

import UIKit
class cartProduct{
    
    var SproductCart = [SkincareItems]()
    var MproductCart = [MakeupItems]()
}

class CartTableVC: UITableViewController {

    @IBAction func DeleteAll(_ sender: Any) {
        classcartProduct.SproductCart.removeAll()
        classcartProduct.MproductCart.removeAll()
        tableView.reloadData()
    }
    

    var classcartProduct = cartProduct()
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "SKINCAREITEMTableViewCell", bundle: nil), forCellReuseIdentifier: "SItemID")
        tableView.rowHeight = 160
        
        tableView.register(UINib(nibName: "MAKEUPITEMTableViewCell", bundle: nil), forCellReuseIdentifier: "MItemID")
        tableView.rowHeight = 160


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if (section == 0) {
            return classcartProduct.SproductCart.count
        } else {
            return classcartProduct.MproductCart.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.section == 0) {
            let cellSProduct = tableView.dequeueReusableCell(withIdentifier: "SItemID") as! SKINCAREITEMTableViewCell
            
            cellSProduct.SItemName.text =  classcartProduct.SproductCart[indexPath.row].Sname
            cellSProduct.SItemDec.text =  classcartProduct.SproductCart[indexPath.row].Sdec
            cellSProduct.SItemCost.text = String( classcartProduct.SproductCart[indexPath.row].Scost)
            cellSProduct.SItemImage.image =  classcartProduct.SproductCart[indexPath.row].Simage
            return cellSProduct
        } else {
            let cellMProduct = tableView.dequeueReusableCell(withIdentifier: "MItemID") as! MAKEUPITEMTableViewCell
                     
            cellMProduct.MItemName.text =  classcartProduct.MproductCart[indexPath.row].Mname
            cellMProduct.MItemDec.text =  classcartProduct.MproductCart[indexPath.row].Mdec
            cellMProduct.MItemCost.text = String( classcartProduct.MproductCart[indexPath.row].Mcost)
            cellMProduct.MItemImage.image =  classcartProduct.MproductCart[indexPath.row].Mimage
            return cellMProduct
        }
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
//          if editingStyle == .delete {
//            classcartProduct.SproductCart.remove(at: indexPath.row)
////            classcartProduct.MproductCart.remove(at: indexPath.row)
//           
//            tableView.reloadData()
//      }
//        //else {
////            classcartProduct.MproductCart.remove(at: indexPath.row)
////            tableView.reloadData()
////        }
//    }
    
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            classcartProduct.MproductCart.remove(at: indexPath.row)
//            tableView.reloadData()
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
