//
//  anotherfun.swift
//  gameWorks
//
//  Created by Adeniyi Ladenegan on 2021-03-11.
//

import UIKit
import WebKit

class anotherfun: UIViewController {

    @IBOutlet weak var anotherfun: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadYoutube(videoID:"g31IkiSX4_E")
        
        
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet var funview: UIView!
    func loadYoutube(videoID: String) {
 
     guard
        
        let youtubeURL = URL(string: "https://youtu.be/g31IkiSX4_E" )
     else { return }
        anotherfun.load( URLRequest(url: youtubeURL) )
    
    }
    /*    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
