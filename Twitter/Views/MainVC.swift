//
//  MainVC.swift
//  Twitter
//
//  Created by Jenna Hakki on 11/12/18.
//  Copyright © 2018 Jenna Hakki. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func createAccBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "ToCreateAccVC", sender: self)
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
    }
    
}
