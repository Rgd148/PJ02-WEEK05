//
//  SKINCARETableVC.swift
//  seporaV1
//
//  Created by Raghad Alahmadi on 27/03/1443 AH.
//

import UIKit

struct SkincareItems {
    var Sname:String = ""
    var Sdec:String = " "
    var Scost: Double = 0
    var Simage: UIImage?
}

class SKINCARETableVC: UITableViewController, SCartDelegate {
  
    func AddToCart(index: Int) {
        SproductCart.append(Sproduct[index])
    }
    
    var Sproduct : [SkincareItems] = [SkincareItems(Sname: "CLINIQUE", Sdec:  " Take The Day Off Cleansing Balm Makeup Remover ", Scost: 180, Simage: UIImage(named: "CLINIQUE")),
          SkincareItems(Sname: "Sephora skincare collection", Sdec: "Vitamin Face Mask Mango and vitamin B6 face mask", Scost: 50, Simage: UIImage(named: "skincare1")),
        SkincareItems(Sname: "Overnight Hair Mask", Sdec: "Nourishing, fortifying, shine, restructuring... our masks care for all types of hair!", Scost: 40, Simage: UIImage(named: "skincare2")),
         SkincareItems(Sname: "Hydrating Hair Mask", Sdec: "An hydrating mask that takes care of your hair", Scost: 70, Simage: UIImage(named: "hair3")),
         SkincareItems(Sname: "Sephora Collection Hair Mask", Sdec: "Sephora Collection Hydrating Hair Mask", Scost: 35, Simage: UIImage(named: "skincare3"))]
    
   
    var SproductCart = [SkincareItems]()
    var cellIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
       
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let skinCartVC = segue.destination as! CartTableVC
        skinCartVC.classcartProduct.SproductCart = SproductCart
    }
    

}
