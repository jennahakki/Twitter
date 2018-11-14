//
//  TwitterLogoIcon.swift
//  Twitter
//
//  Created by Jenna H on 11/14/18.
//  Copyright © 2018 Jenna Hakki. All rights reserved.
//

import UIKit

func twitterLogoItem(navItem: UINavigationItem) {
    let image = UIImage(named: "twitter logo")
    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 35))
    
    imageView.contentMode = .scaleAspectFill
    imageView.image = image
    navItem.titleView = imageView
}
