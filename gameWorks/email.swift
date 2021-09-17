//
//  email.swift
//  gameWorks
//
//  Created by Adeniyi Ladenegan on 2021-03-11.
//

import UIKit
import MessageUI


var number: String = "6477025684"
var fullname: String = ""
var usermail: String = ""
var subjectText: String = ""
var messageText: String = ""


class email: UIViewController, MFMailComposeViewControllerDelegate {


    @IBOutlet weak var nickname: UITextField!
    @IBOutlet weak var youremail: UITextField!
    @IBOutlet weak var subject: UITextField!
    
    @IBOutlet weak var message: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func send(_ sender: Any) {
        fullname = nickname.text!
        usermail = youremail.text!
        subjectText = subject.text!
        messageText = message.text!
        
        if MFMailComposeViewController.canSendMail(){
        let mail = MFMailComposeViewController()
        mail.mailComposeDelegate = self
            mail.setToRecipients(["adeniyiladenegan@gmail.com"])
            mail.setMessageBody("<p> message from:" + fullname + "about " + subjectText + "users email:" + usermail + "</p>", isHTML: true)
            present(mail, animated: true)
        }else{
            print("Error, sorry cant send the mail Mr")
        }
    }
    
    @IBAction func call(_ sender: Any) {
        guard let number = URL(string: "tel://" + number) else{
            return}
        UIApplication.shared.open(number)
        }
    
    @IBAction func mailtohome(_ sender: Any) {
        performSegue(withIdentifier: "mailtohome", sender: nil)
    }
}
