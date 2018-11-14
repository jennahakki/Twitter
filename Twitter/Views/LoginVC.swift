//
//  LoginVC.swif
//  Twitter
//
//  Created by Jenna H on 11/13/18.
//  Copyright © 2018 Jenna Hakki. All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController {

    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var pwTxtField: UITextField!
    
    var homeTableVC = HomeTableVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        twitterLogoItem(navItem: navigationItem)
        
        if let nav = navigationController {
            removeLine(navController: nav)
        }
    }
    
    @IBAction func cancelBtnPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTxtField.text!, password: pwTxtField.text!) { (data, err) in
            if let err = err {
                print(err.localizedDescription)
            } else {
                print(data?.user.email ?? "")
                self.performSegue(withIdentifier: "ToHomeTableVC", sender: self)
            }
        }
    }
}
