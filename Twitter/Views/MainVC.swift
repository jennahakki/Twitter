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
        
        twitterLogoItem(navItem: navigationItem)
        
        if let nav = navigationController {
        removeLine(navController: nav)
    }
        
    }
    
}
