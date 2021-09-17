//
//  ViewControllerGameOver3.swift
//  gameWorks
//
//  Created by Adeniyi Ladenegan on 2021-03-04.
//

import UIKit

class ViewControllerGameOver3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func playagain(_ sender: Any) {
      performSegue(withIdentifier: "playagain", sender: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
