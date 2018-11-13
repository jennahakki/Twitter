//
//  LoginVC.swift
//  Twitter
//
//  Created by Jenna H on 11/13/18.
//  Copyright © 2018 Jenna Hakki. All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController {
    
    var createAccountVC = CreateAccountVC()

    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var pwTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAccountVC.twitterLogoItem()
    }
    
    @IBAction func cancelBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
    
        Auth.auth().signIn(withEmail: emailTxtField.text!, password: pwTxtField.text!) { (data, err) in
            if let err = err {
                print(err.localizedDescription)
            } else {
                print(data?.user.email ?? "")
            }
        }
    }
}
