//
//  CreateAccountVC.swift
//  Twitter
//
//  Created by Jenna Hakki on 11/12/18.
//  Copyright © 2018 Jenna Hakki. All rights reserved.
//

import UIKit
import Firebase

class CreateAccountVC: UIViewController {

    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var pwTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       twitterLogoItem(navItem: navigationItem)
        
        if let nav = navigationController {
        removeLine(navController: nav)
        }
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func signUpBtnPressed(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailTxtField.text!, password: pwTxtField.text!) { (data, err) in
            if let err = err {
                print(err.localizedDescription)
            } else {
                print(data?.user.email ?? "")
                
                // If no error, go to next VC
                
            }
        }
    }
    
 

}
