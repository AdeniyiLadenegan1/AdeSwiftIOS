//
//  ViewControllerTwo.swift
//  gameWorks
//
//  Created by Adeniyi Ladenegan on 2021-03-03.
//

import UIKit
import WebKit

var birthdate: String = ""
var destiny: String = ""
var month: String = ""


class ViewControllerTwo: UIViewController {

    
    @IBOutlet var orange: UIView!
    @IBOutlet weak var angelic: UIImageView!
    
    @IBOutlet weak var datepicker: UIDatePicker!
    
    @IBOutlet weak var yourname: UITextField!
    
    @IBOutlet weak var yourdestiny: UILabel!
    @IBAction func purple(_ sender: Any) {
        performSegue(withIdentifier: "purple", sender: nil)
    }
    
    @IBAction func backview(_ sender: Any) {
        performSegue(withIdentifier: "backview", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func chosenDestiny(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM dd, YYYY"
        birthdate = dateFormatter.string(from: sender.date)
    }
    
    @IBAction func mth(_ sender: UIDatePicker) {
    let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM"
        month = dateFormatter.string(from: sender.date)
        
        switch month {
        case "Jan":
            destiny = "An Angel is ready to give you a gift "
        case "Feb":
            destiny = "Archangels are searching fro you"
        case "Mar":
            destiny = "Spirit of your fore fathers are with you"
        case "Apr":
            destiny = "Human nature ssometimes takes its course in your life, but you are still super"
        case "May":
            destiny = "You are such a Blessing to this world, how do you do it?"
        case "Jun":
            destiny = "Wow! supernatural is your second name"
        case "Jul":
            destiny = "take a look at your Glory, you are amazing!"
        case "Aug":
            destiny = "You are the Hero of this show, sit back and relax."
        case "Sep":
            destiny = "An awesome and beautiful woman is in love with you"
        case "Oct":
            destiny = "You are Powerful beyond your wildest imagination, can i get your number?"
        case "Nov":
            destiny = "You have such powerful muscles, Mighty hulk cant withstand your strenght"
        case "Dec":
            destiny = "Ok! have you called your Mother today? she is worried about you, call her right away"
        default:
            destiny = ""
    }
}
        
    @IBAction func finaldestiny(_ sender: Any) {
    
    let username: String = yourname.text!
        yourdestiny.text = "Hey " + username + "\nBirthday: " + birthdate + "\nDestiny: " + destiny
    }
}
