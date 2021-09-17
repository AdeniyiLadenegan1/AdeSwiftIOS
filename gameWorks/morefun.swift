//
//  morefun.swift
//  gameWorks
//
//  Created by Adeniyi Ladenegan on 2021-03-11.
//

import UIKit
import WebKit

class morefun: UIViewController {

    
    @IBOutlet weak var funnyvideo: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadYoutube(videoID:"zmGj4tU-11E")


        // Do any additional setup after loading the view.
    }
   
    
    @IBAction func backtosplash(_ sender: Any) {
        performSegue(withIdentifier: "backtosplash", sender: nil)
    }
    
    @IBAction func morefun(_ sender: Any) {
        performSegue(withIdentifier: "anotherfun", sender: nil)
    }
    
    @IBOutlet var morefun: UIView!
    func loadYoutube(videoID: String) {
 
     guard
        
        let youtubeURL = URL(string: "https://www.youtube.com/embed/zmGj4tU-11E" )
     else { return }
        funnyvideo.load( URLRequest(url: youtubeURL) )
       
      
    }
}
