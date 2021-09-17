//
//  winner.swift
//  gameWorks
//
//  Created by Adeniyi Ladenegan on 2021-03-10.
//

import UIKit
import WebKit

class winner: UIViewController {

    @IBOutlet weak var winscreen: UILabel!
    @IBOutlet weak var winner: UIImageView!
    @IBOutlet weak var playAceagain: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func playace(_ sender: Any) {
        performSegue(withIdentifier: "playace", sender: nil)
    }
}
