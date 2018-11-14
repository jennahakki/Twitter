//
//  RemoveNaviLine.swift
//  Twitter
//
//  Created by Jenna H on 11/14/18.
//  Copyright © 2018 Jenna Hakki. All rights reserved.
//

import UIKit

func removeLine(navController: UINavigationController) {
    navController.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
    navController.navigationBar.shadowImage = UIImage()
}
