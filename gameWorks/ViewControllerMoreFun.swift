//
//  ViewControllerMoreFun.swift
//  gameWorks
//
//  Created by Adeniyi Ladenegan on 2021-03-04.
//

import UIKit
import WebKit

class ViewControllerMoreFun: UIViewController {
    
    @IBOutlet var funnyvideo: WKWebView!
    
       override func viewDidLoad() {
            
        super.viewDidLoad()
    loadYoutube(videoID:"hY7m5jjJ9mM")
    
    }
    
    @IBOutlet var morefun: UIView!
        func loadYoutube(videoID: String) {
 
     guard
    let youtubeURL = URL(string:"https://www.youtub.com/embed/hY7m5jjJ9mM" )
     else { return }
    funnyvideo.load( URLRequest(url: youtubeURL)
        )
    }
   
    @IBAction func playNow(_ sender: Any) {
    
    performSegue(withIdentifier: "viewController", sender: nil)
    }
}
