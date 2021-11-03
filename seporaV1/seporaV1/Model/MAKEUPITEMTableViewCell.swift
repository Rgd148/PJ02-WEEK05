//
//  MAKEUPITEMTableViewCell.swift
//  seporaV1
//
//  Created by Raghad Alahmadi on 27/03/1443 AH.
//

import UIKit

//class cart: CartProduct{
//    let Mcart(
//}

class MAKEUPITEMTableViewCell: UITableViewCell {

    @IBOutlet weak var MItemImage: UIImageView!
    @IBOutlet weak var MItemName: UILabel!
    @IBOutlet weak var MItemDec: UILabel!
    @IBOutlet weak var MItemCost: UILabel!
@IBAction func AddMItem(_ sender: Any) {
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
