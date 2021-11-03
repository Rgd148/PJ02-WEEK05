//
//  MAKEUPITEMTableViewCell.swift
//  seporaV1
//
//  Created by Raghad Alahmadi on 27/03/1443 AH.
//

import UIKit


protocol MCartDelegate {
    func AddToCart(index: Int)
}


class MAKEUPITEMTableViewCell: UITableViewCell {
    
    
    var delegate: MCartDelegate!
    
    @IBOutlet weak var MItemImage: UIImageView!
    @IBOutlet weak var MItemName: UILabel!
    @IBOutlet weak var MItemDec: UILabel!
    @IBOutlet weak var MItemCost: UILabel!
    var myIndex = 0
    @IBAction func AddMItem(_ sender: Any) {
        delegate.AddToCart(index: myIndex)
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
