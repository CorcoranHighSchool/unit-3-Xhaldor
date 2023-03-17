//
//  ViewController.swift
//  RainbowTabs
//
//  Created by Josue Manzo Gomez on 3/15/23.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabBarItem.badgeValue = "!"
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarItem.badgeValue = nil
    }


}

