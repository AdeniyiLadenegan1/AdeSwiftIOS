//
//  gameCredits.swift
//  gameWorks
//
//  Created by Adeniyi Ladenegan on 2021-03-10.
//

import UIKit
import WebKit


class gameCredits: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func contactbutton(_ sender: Any) {
        performSegue(withIdentifier: "email", sender: nil)
    }
}
