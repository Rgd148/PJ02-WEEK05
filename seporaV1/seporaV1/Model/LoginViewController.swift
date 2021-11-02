//
//  LoginViewController.swift
//  seporaV1
//
//  Created by Raghad Alahmadi on 27/03/1443 AH.
//

import UIKit

class LoginViewController: UIViewController {
    var userdefaults = UserDefaults()
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var usernameTF: UITextField!
    
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var writeName: UILabel!
    
    @IBAction func Login(_ sender: Any) {
        let enteredName = usernameTF.text
        userdefaults.set(enteredName, forKey: "Username")
        writeName.text = enteredName
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        writeName.text = userdefaults.string(forKey: "Username")

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
