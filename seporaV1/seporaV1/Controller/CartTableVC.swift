//
//  CartTableVC.swift
//  seporaV1
//
//  Created by Raghad Alahmadi on 28/03/1443 AH.
//

import UIKit




class CartTableVC: UITableViewController {
    
    var SproductCart = [SkincareShop]()
    var MproductCart = [MakeupShop]()
    var index_Path = 0

    @IBAction func DeleteAll(_ sender: Any) {
     SproductCart.removeAll()
    MproductCart.removeAll()
        tableView.reloadData()
    }
    


   
    
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
            return SproductCart.count
        } else {
            return MproductCart.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.section == 0) {
            let cellSProduct = tableView.dequeueReusableCell(withIdentifier: "SItemID") as! SKINCAREITEMTableViewCell
            
            cellSProduct.SItemName.text =  SproductCart[indexPath.row].Sname
            cellSProduct.SItemDec.text = SproductCart[indexPath.row].Sdec
            cellSProduct.SItemCost.text = String( SproductCart[indexPath.row].Scost)
            cellSProduct.SItemImage.image =  SproductCart[indexPath.row].Simage
            return cellSProduct
        } else {
            let cellMProduct = tableView.dequeueReusableCell(withIdentifier: "MItemID") as! MAKEUPITEMTableViewCell
                     
            cellMProduct.MItemName.text =  MproductCart[indexPath.row].Mname
            cellMProduct.MItemDec.text =  MproductCart[indexPath.row].Mdec
            cellMProduct.MItemCost.text = String( MproductCart[indexPath.row].Mcost)
            cellMProduct.MItemImage.image =  MproductCart[indexPath.row].Mimage
            return cellMProduct
        }
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == UITableViewCell.EditingStyle.delete){
            SproductCart.remove(at: index_Path)
          tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
        tableView.reloadData()
      }

    override func tableView(_ tableView: UITableView, didSelectRowAt x: IndexPath) {
        
        index_Path = x.row
            }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "AddSegue"){
        let skinCartVC = segue.destination as! CartTableVC
        skinCartVC.SproductCart = SproductCart
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
