//
//  ViewController.swift
//  DemoAppWithPackage
//
//  Created by Vishal Kamble on 08/06/24.
//

import UIKit
import UserRequestKit


class ViewController: UIViewController {

    @IBOutlet weak var emailLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func clickToCallPackageBtn(_ sender: UIButton) {
        UserRequestKit.presentAsTopViewController { userEmail in
                if let email = userEmail {
                    self.emailLbl.text = email
                } else {
                    print("No user email returned")
                }
            }
    }

}

