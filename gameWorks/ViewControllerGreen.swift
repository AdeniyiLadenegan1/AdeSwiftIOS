//
//  ViewControllerGreen.swift
//  gameWorks
//
//  Created by Adeniyi Ladenegan on 2021-03-03.
//

import UIKit
import WebKit

class ViewControllerGreen: UIViewController {
    @IBOutlet weak var roulette: UILabel!
    @IBOutlet weak var Shotsfired: UILabel!
    @IBOutlet weak var rouletteImage: UIImageView!
    
    @IBOutlet weak var triggerImage: UIImageView!
    @IBOutlet weak var declineImage: UIImageView!
    
    
    
    //my variables.
    //label for trigger
    var outcome = ["shoes", "shirt", "paper", "underwear", "belt", "tie", "pants", "cufflinks", "phone", "fridge", "tv", "radio", "rug", "table", "chair","cooker", "books", "brooms", "garbage", "slippers", "computer", "water", "bathroom", "bed", "bedroom", "wardrobe", "towel", "soap", "spoon", "fork", "knives", "syringe", "drugs", "lion", "tiger", "USD", "AUD", "HKD", "GOLD", "YEN", "GBP", "SILVER", "DIAMONDS", "pen", "pencil", "bottle", "comb", "PEARL", "tray", "socks", "toothbrush", "toothpase", "socket", "gum", "paint", "shoe polish", "lamp", "stones", "food", "RUBIES", "SAPPHIRES", "guns", "fan", "diary", "PLATINUM", "SWISS FRANC", "SARAND", "CAD", "SHILLINGS", "CRUDE OIL", "EURO", "YUAN", "PESO", "KRONE", "RUPEE", "RIYAL", "SHEKEL", "RUBLE", "KRONA", "LIRA", "AUD",  "RUPIAH", "can", "headphone", "glasses", "wire", "clock", "remote", "plug", "mirror", "cup", "radio", "jug", "tape", "sandals", "battery", "button", "bathtub", "hairnet", "pin"]
    var choice = 0
    
    
    var declined = ["too bad", "not fair", "go away", "vamoose", "scram", "gidoutahere"]
    var choiceDeclined = 0
    
    @IBOutlet weak var green: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBAction func gameCredits(_ sender: Any) {
        performSegue(withIdentifier: "gameCredits", sender: nil)
    }
    // Do any additional setup after loading the view.
    
    @IBAction func trigger(_ sender: Any) {
        displayChoice()
        finalChoice()
    }
    
    @IBAction func decline(_ sender: Any) {
        Declined()
    }
    
    func displayChoice() {
        Shotsfired.text = "\(outcome[choice])"
        finalChoice()
    }
    
    func finalChoice() {
       choice = Int(arc4random_uniform(100))
    }
    
    func Declined() {
        Shotsfired.text = "\(declined[choiceDeclined])"
        choiceDeclined = Int(arc4random_uniform(6))
    }
    
    @IBAction func back(_ sender: Any) {
        performSegue(withIdentifier: "back", sender: nil)
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
