//
//  ViewControllerSplashscreen.swift
//  gameWorks
//
//  Created by Adeniyi Ladenegan on 2021-03-03.
//

import UIKit

class ViewControllerSplashscreen: UIViewController {
    @IBOutlet weak var myname: UILabel!
    
    @IBOutlet weak var namefield: UITextField!
    
    @IBOutlet weak var splashscreen: UIView!
    @IBOutlet weak var welcome: UILabel!
    @IBOutlet weak var shiny: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func morefun(_ sender: Any) {
        performSegue(withIdentifier: "morefun", sender: nil)
    }
    
    @IBAction func clickplay(_ sender: Any) {
        performSegue(withIdentifier: "viewController", sender: nil)
    
    }
    @IBAction func submit(_ sender: Any) {
        myname.text = "Hey tapper" + " " + namefield.text! + " " + "ready to play?"
    
    }
}
