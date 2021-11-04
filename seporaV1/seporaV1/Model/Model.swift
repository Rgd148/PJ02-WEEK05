//
//  Model.swift
//  seporaV1
//
//  Created by Raghad Alahmadi on 29/03/1443 AH.
//

import UIKit

struct SkincareShop {
    var Sname:String = ""
    var Sdec:String = " "
    var Scost: Double = 0
    var Simage: UIImage?
}

struct MakeupShop {
    var Mname:String = ""
    var Mdec:String = " "
    var Mcost: Double = 0
    var Mimage: UIImage?
}


class SeporaShops {
    var SkincareProducts : [SkincareShop] = [SkincareShop(Sname: "CLINIQUE", Sdec:  " Take The Day Off Cleansing Balm Makeup Remover ", Scost: 180, Simage: UIImage(named: "CLINIQUE")),
                                             SkincareShop(Sname: "Sephora skincare collection", Sdec: "Vitamin Face Mask Mango and vitamin B6 face mask", Scost: 50, Simage: UIImage(named: "skincare1")),
                                            SkincareShop(Sname: "Overnight Hair Mask", Sdec: "Nourishing, fortifying, shine, restructuring... our masks care for all types of hair!", Scost: 40, Simage: UIImage(named: "skincare2")),
                                             SkincareShop(Sname: "Hydrating Hair Mask", Sdec: "An hydrating mask that takes care of your hair", Scost: 70, Simage: UIImage(named: "hair3")),
                                           SkincareShop(Sname: "Sephora Collection Hair Mask", Sdec: "Sephora Collection Hydrating Hair Mask", Scost: 35, Simage: UIImage(named: "skincare3"))]
    
    var MakeupProducts : [MakeupShop] = [MakeupShop(Mname: "Blush", Mdec: "A long-lasting, blendable, multiuse liquid pigment for your cheeks,  lips and eyes.", Mcost: 80, Mimage: UIImage(named: "s2440212.png")),
                                         MakeupShop(Mname: "Concealer", Mdec: "Soft Matte Complete Concealer", Mcost: 170, Mimage: UIImage(named: "concelar")),
                                         MakeupShop(Mname: "Palette", Mdec: "Eyestories Eyeshadow Palette", Mcost: 88, Mimage: UIImage(named: "palette")),
                                       MakeupShop(Mname: "Lipstick", Mdec: "Matte Revolution Lipstick", Mcost: 70, Mimage: UIImage(named: "Lipstick")),
                                        MakeupShop(Mname: "bareMinerals", Mdec: "Strength & Length Serum-Infused Mascara", Mcost: 113, Mimage: UIImage(named: "bareMinerals"))]
}
