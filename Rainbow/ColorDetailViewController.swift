//
//  ColorDetailViewController.swift
//  Rainbow
//
//  Created by Jason Hoover on 5/11/20.
//  Copyright © 2020 Jason Hoover. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    var cellColor: MyColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    // Take the model's information and place it in any relevant views on the screen
    func updateViews() {
        if let cellColor = cellColor {
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
    }

}
