//
//  Model.swift
//  seporaV1
//
//  Created by Raghad Alahmadi on 28/03/1443 AH.
//

import UIKit

struct Cart {
    var products: [Product]
}
struct Product {
    var name : String
    var decription : String
    var cost : Double
    var image : UIImage
    var category : String
}
struct customer {
    var fullname : String
    var username : String
    var password : String
    var cart : [Cart] = []
    
}

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

class cartProduct{
    
    var SproductCart = [SkincareShop]()
    var MproductCart = [MakeupShop]()
}
