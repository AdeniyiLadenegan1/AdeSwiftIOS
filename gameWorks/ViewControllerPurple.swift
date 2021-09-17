//
//  ViewControllerPurple.swift
//  gameWorks
//
//  Created by Adeniyi Ladenegan on 2021-03-03.
//

import UIKit
import WebKit

var isPrime: Int = 0
var counter: Int = 0
var primeNumbers = [1, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 101, 107, 109, 113, 127, 131, 137, 139]

var mySpin: Int = 0
var superwins: Int = 0
var total: Int = 0
var randSmile1: Int = 0
var randSmile2: Int = 0
var randSmile3: Int = 0
var randSmile4: Int = 0
var randSmile5: Int = 0
var randSmile6: Int = 0
var randSmile7: Int = 0
var randSmile8: Int = 0
var randSmile9: Int = 0
var randSmile10: Int = 0
var randSmile11: Int = 0
var randSmile12: Int = 0
var randSmile13: Int = 0
var randSmile14: Int = 0
var randSmile15: Int = 0
var randSmile16: Int = 0
var randSmile17: Int = 0
var randSmile18: Int = 0
var randSmile19: Int = 0
var randSmile20: Int = 0
var randSmile21: Int = 0
var randSmile22: Int = 0
var randSmile23: Int = 0
var randSmile24: Int = 0
var match: Bool = false
var Prime: Int = 0



class ViewControllerPurple: UIViewController {

    @IBOutlet weak var wins: UILabel!
    @IBOutlet var purple: UIView!
    @IBOutlet weak var smiley1: UIImageView!
    @IBOutlet weak var smiley2: UIImageView!
    @IBOutlet weak var smiley3: UIImageView!
    @IBOutlet weak var smiley4: UIImageView!
    @IBOutlet weak var smiley5: UIImageView!
    @IBOutlet weak var smiley6: UIImageView!
    @IBOutlet weak var smiley7: UIImageView!
    @IBOutlet weak var smiley8: UIImageView!
    @IBOutlet weak var smiley9: UIImageView!
    @IBOutlet weak var smiley10: UIImageView!
    @IBOutlet weak var smiley11: UIImageView!
    @IBOutlet weak var smiley12: UIImageView!
    @IBOutlet weak var smiley13: UIImageView!
    @IBOutlet weak var smiley14: UIImageView!
    @IBOutlet weak var smiley15: UIImageView!
    @IBOutlet weak var smiley16: UIImageView!
    @IBOutlet weak var smiley17: UIImageView!
    @IBOutlet weak var smiley18: UIImageView!
    @IBOutlet weak var smiley19: UIImageView!
    @IBOutlet weak var smiley20: UIImageView!
    @IBOutlet weak var smiley21: UIImageView!
    @IBOutlet weak var smiley22: UIImageView!
    @IBOutlet weak var smiley23: UIImageView!
    @IBOutlet weak var smiley24: UIImageView!
    
    
    @IBAction func green(_ sender: Any) {
        performSegue(withIdentifier: "green", sender: nil)
        
    }
    @IBAction func backtoO(_ sender: Any) {
        performSegue(withIdentifier: "backtoO", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   
    
    @IBAction func spin(_ sender: Any) {
    
    
                randSmile1 = Int.random(in: 1..<141)
//        if (Prime(number: randSmile1)) {
//        }
//            if (match) {
//        total += 1
//        }
            
        randSmile2 = Int.random(in: 1..<141)
        
        randSmile3 = Int.random(in: 1..<141)
        randSmile4 = Int.random(in: 1..<141)
        randSmile5 = Int.random(in: 1..<141)
        randSmile6 = Int.random(in: 1..<141)
        randSmile7 = Int.random(in: 1..<141)
        randSmile8 = Int.random(in: 1..<141)
        randSmile9 = Int.random(in: 1..<141)
        randSmile10 = Int.random(in: 1..<141)
        randSmile11 = Int.random(in: 1..<141)
        randSmile12 = Int.random(in: 1..<141)
        randSmile13 = Int.random(in: 1..<141)
        randSmile14 = Int.random(in: 1..<141)
        randSmile15 = Int.random(in: 1..<141)
        randSmile16 = Int.random(in: 1..<141)
        randSmile17 = Int.random(in: 1..<141)
        randSmile18 = Int.random(in: 1..<141)
        randSmile19 = Int.random(in: 1..<141)
        randSmile20 = Int.random(in: 1..<141)
        randSmile21 = Int.random(in: 1..<141)
        randSmile22 = Int.random(in: 1..<141)
        randSmile23 = Int.random(in: 1..<141)
        randSmile24 = Int.random(in: 1..<141)

        
        let asmile: String = String(randSmile1)
        let bsmile: String = String(randSmile2)
        let csmile: String = String(randSmile3)
        let dsmile: String = String(randSmile4)
        let esmile: String = String(randSmile5)
        let fsmile: String = String(randSmile6)
        let gsmile: String = String(randSmile7)
        let hsmile: String = String(randSmile8)
        let ismile: String = String(randSmile9)
        let jsmile: String = String(randSmile10)
        let ksmile: String = String(randSmile11)
        let lsmile: String = String(randSmile12)
        let msmile: String = String(randSmile13)
        let nsmile: String = String(randSmile14)
        let osmile: String = String(randSmile15)
        let psmile: String = String(randSmile16)
        let qsmile: String = String(randSmile17)
        let rsmile: String = String(randSmile18)
        let ssmile: String = String(randSmile19)
        let tsmile: String = String(randSmile20)
        let usmile: String = String(randSmile21)
        let vsmile: String = String(randSmile22)
        let wsmile: String = String(randSmile23)
        let xsmile: String = String(randSmile24)
        
        
        func isPrime(number: Int) -> Bool {
        match = false
        for n in primeNumbers {
        if (number == n) {
        match = true
            }
        }
           return match
        }
            
        
        smiley1.image = UIImage(named:String("em" + asmile + ".png"))
        smiley2.image = UIImage(named:String("em" + bsmile + ".png"))
        smiley3.image = UIImage(named:String("em" + csmile + ".png"))
        smiley4.image = UIImage(named:String("em" + dsmile + ".png"))
        smiley5.image = UIImage(named:String("em" + esmile + ".png"))
        smiley6.image = UIImage(named:String("em" + fsmile + ".png"))
        smiley7.image = UIImage(named:String("em" + gsmile + ".png"))
        smiley8.image = UIImage(named:String("em" + hsmile + ".png"))
        smiley9.image = UIImage(named:String("em" + ismile + ".png"))
        smiley10.image = UIImage(named:String("em" + jsmile + ".png"))
        smiley11.image = UIImage(named:String("em" + ksmile + ".png"))
        smiley12.image = UIImage(named:String("em" + lsmile + ".png"))
        smiley13.image = UIImage(named:String("em" + msmile + ".png"))
        smiley14.image = UIImage(named:String("em" + nsmile + ".png"))
        smiley15.image = UIImage(named:String("em" + osmile + ".png"))
        smiley16.image = UIImage(named:String("em" + psmile + ".png"))
        smiley17.image = UIImage(named:String("em" + qsmile + ".png"))
        smiley18.image = UIImage(named:String("em" + rsmile + ".png"))
        smiley19.image = UIImage(named:String("em" + ssmile + ".png"))
        smiley20.image = UIImage(named:String("em" + tsmile + ".png"))
        smiley21.image = UIImage(named:String("em" + usmile + ".png"))
        smiley21.image = UIImage(named:String("em" + vsmile + ".png"))
        smiley23.image = UIImage(named:String("em" + wsmile + ".png"))
        smiley24.image = UIImage(named:String("em" + xsmile + ".png"))
    
        var random: Int = 0
        superwins += mySpin
        estimatewin()
        }
        
        func estimatewin() {
        newcount += 1
        isPrime += 100
        newcount = newcount+1
        
        superwins += randSmile1 + randSmile2 + randSmile3 + randSmile4 + randSmile5 + randSmile6 + randSmile7 + randSmile8 + randSmile9 + randSmile10 + randSmile11 + randSmile12 + randSmile3 + randSmile4 + randSmile5 + randSmile1 + randSmile2 + randSmile3 + randSmile4 + randSmile5 + randSmile6 + randSmile7 + randSmile8 + randSmile9
            wins.text = "$$$ " + String(superwins)
        }
    }
