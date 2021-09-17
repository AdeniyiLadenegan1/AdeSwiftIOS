//
//  ViewController.swift
//  gameWorks
//
//  Created by Adeniyi Ladenegan on 2021-03-02.
//

import UIKit
import WebKit

var tapInt = 0
var startRound = 0
var startTimer = Timer()
var gameInt = 60
var starttimer = Timer()
var random: Int = 0
var randCard1: Int = 0
var randCard2: Int = 0
var randCard3: Int = 0
var randCard4: Int = 0
var randCard5: Int = 0
var humanwins: Int = 0
var allwins: Int = 0
var newscore: Int = 0
var superscore: Int = 0
var compscore: Int = 0
var cptwins: Int = 0
var newcount: Int = 0
var Total: Int = 0
var timer: Timer!
var count: Int = 0
var timestart: Int = 0


class ViewController: UIViewController {
    @IBOutlet weak var Allwins: UILabel!
    @IBOutlet weak var ghost: UILabel!
    @IBOutlet weak var myscore: UILabel!
    @IBOutlet weak var timeCount: UILabel!
    @IBOutlet weak var cptscore: UILabel!
    @IBOutlet weak var compscore: UILabel!
    
    @IBOutlet weak var card1: UIImageView!
    @IBOutlet weak var card2: UIImageView!
    @IBOutlet weak var card3: UIImageView!
    @IBOutlet weak var card4: UIImageView!
    @IBOutlet weak var card5: UIImageView!
    @IBOutlet weak var playimage: UIImageView!
    
 
    @IBOutlet weak var cptcard1: UIImageView!
    @IBOutlet weak var cptcard2: UIImageView!
    @IBOutlet weak var cptcard3: UIImageView!
    @IBOutlet weak var cptcard4: UIImageView!
    @IBOutlet weak var cptcard5: UIImageView!
    
    
    @IBAction func orange(_ sender: Any) {
        performSegue(withIdentifier: "orange", sender: nil)
    }
    @IBAction func backhome(_ sender: Any) {
        performSegue(withIdentifier: "backhome", sender: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }
    
    func cpttime() {
        
        randCard1 = Int.random(in: 1..<56)
        randCard2 = Int.random(in: 1..<56)
        randCard3 = Int.random(in: 1..<56)
        randCard4 = Int.random(in: 1..<56)
        randCard5 = Int.random(in: 1..<56)
        
        let acard: String = "card" + String(randCard1)
        let bcard: String = "card" + String(randCard2)
        let ccard: String = "card" + String(randCard3)
        let dcard: String = "card" + String(randCard4)
        let ecard: String = "card" + String(randCard5)
        
        cptcard1.image = UIImage(named:String(acard))
        cptcard2.image = UIImage(named:String(bcard))
        cptcard3.image = UIImage(named:String(ccard))
        cptcard4.image = UIImage(named:String(dcard))
        cptcard5.image = UIImage(named:String(ecard))
        
        calcCptscore()
        }
    
        func calcCptscore(){
        var sumofwins: Int = 0
        newcount += 1
        newcount = newcount+1
        
            
        sumofwins += randCard1 + randCard2 + randCard3 + randCard4 + randCard5
            cptwins += sumofwins * Int((5.97))
            cptscore.text = "Total: " + String(sumofwins)
            compscore.text = "Comp: " + String(cptwins)
        }

    @objc func incrementCountLabel() {
        count += 1
        if count > 60 {
        if humanwins > cptwins {
        performSegue(withIdentifier: "winner", sender: nil)
        } else {
        performSegue(withIdentifier: "gameover3", sender: nil)
        }
        
        } else {
        timeCount.text = String(count)
        cpttime()
        
           }
        }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        }
    
    @IBAction func play(_ sender: Any) {
        if timestart == 0 {
        timestart += 1
        incrementCountLabel()
        }
            
        randCard1 = Int.random(in: 1..<56)
        randCard2 = Int.random(in: 1..<56)
        randCard3 = Int.random(in: 1..<56)
        randCard4 = Int.random(in: 1..<56)
        randCard5 = Int.random(in: 1..<56)
        
        let acard: String = "card" + String(randCard1)
        let bcard: String = "card" + String(randCard2)
        let ccard: String = "card" + String(randCard3)
        let dcard: String = "card" + String(randCard4)
        let ecard: String = "card" + String(randCard5)
        
        
        card1.image = UIImage(named:String(acard))
        card2.image = UIImage(named:String(bcard))
        card3.image = UIImage(named:String(ccard))
        card4.image = UIImage(named:String(dcard))
        card5.image = UIImage(named:String(ecard))
        
        
        calculate()
        }
    
        func calculate(){
        var sumofwins: Int = 0
            newcount += 1
            newcount = newcount+1
        sumofwins += randCard1 + randCard2 + randCard3 + randCard4 + randCard5
            humanwins += sumofwins
            myscore.text = "Total: " + String(sumofwins)
            Allwins.text = "Ascor: " + String(humanwins)
        }
    
          @IBAction func starter(_ sender: Any) {
           cptwins = 0
           count = 0
           timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(incrementCountLabel), userInfo: nil, repeats: true)
           }
     }
