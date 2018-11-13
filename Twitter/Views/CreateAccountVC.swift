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
        
        twitterLogoItem()
        
    }
    
    @IBAction func stopBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signUpBtnPressed(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailTxtField.text!, password: pwTxtField.text!) { (data, err) in
            if let err = err {
                print(err.localizedDescription)
            } else {
                print(data?.user.email ?? "")
                
                // If no error, go to next VC
                // performSegue(withIdentifier: "", sender: self)
            }
        }
    }
    
    // Put this code in Login VC class
//    func btn() {
//        Auth.auth().signIn(withEmail: <#T##String#>, password: <#T##String#>, completion: <#T##AuthDataResultCallback?##AuthDataResultCallback?##(AuthDataResult?, Error?) -> Void#>)
//    }
    
    func twitterLogoItem() {
        let image = UIImage(named: "twitter logo")
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 35))
        imageView.contentMode = .scaleAspectFill
        imageView.image = image
        navigationItem.titleView = imageView
    }

}
