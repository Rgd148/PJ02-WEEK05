//
//  MAKEUPTableVC.swift
//  seporaV1
//
//  Created by Raghad Alahmadi on 27/03/1443 AH.
//

import UIKit

struct MakeupItems {
    var Mname:String = ""
    var Mdec:String = " "
    var Mcost: Double = 0
    var Mimage: UIImage?
}

class MAKEUPTableVC: UITableViewController {
    var Mproduct : [MakeupItems] = [MakeupItems(Mname: "Blush", Mdec: "A long-lasting, blendable, multiuse liquid pigment for your cheeks,  lips and eyes.", Mcost: 80, Mimage: UIImage(named: "s2440212.png")),
    MakeupItems(Mname: "Concealer", Mdec: "Soft Matte Complete Concealer", Mcost: 170, Mimage: UIImage(named: "concelar")),
    MakeupItems(Mname: "Palette", Mdec: "Eyestories Eyeshadow Palette", Mcost: 88, Mimage: UIImage(named: "palette")),
    MakeupItems(Mname: "Lipstick", Mdec: "Matte Revolution Lipstick", Mcost: 70, Mimage: UIImage(named: "Lipstick")),
    MakeupItems(Mname: "bareMinerals", Mdec: "Strength & Length Serum-Infused Mascara", Mcost: 113, Mimage: UIImage(named: "bareMinerals"))]
    /*
  (title: "CLINIQUE", details: " Take The Day Off Cleansing Balm Makeup Remover ", cost: 170, imagItem:UIImage(named: "CLINIQUE"))*/
    

    override func viewDidLoad() {
        super.viewDidLoad()
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

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
