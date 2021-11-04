//
//  AddViewController.swift
//  seporaV1
//
//  Created by Raghad Alahmadi on 29/03/1443 AH.
//

import UIKit

class AddViewController: UIViewController {
    var sepShop : SeporaShops!
    
    @IBOutlet weak var productTtitle: UITextField!
    
    @IBOutlet weak var productDescription: UITextField!
    @IBOutlet weak var productPrice: UITextField!

    @IBAction func AddProduct(_ sender: Any) {
        sepShop.MakeupProducts.append(MakeupShop(Mname: productTtitle.text!, Mdec: productDescription.text!, Mcost: Double(productPrice.text!)!, Mimage: nil))
        productPrice.keyboardType = .numberPad
    
        navigationController?.popViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
