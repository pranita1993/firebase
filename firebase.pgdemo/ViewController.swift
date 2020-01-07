//
//  ViewController.swift
//  firebase.pgdemo
//
//  Created by Bhushan on 1/7/20.
//  Copyright © 2020 Bhushan Badhe. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    var ref:DatabaseReference!
    var courseDic = NSMutableDictionary()
    
    @IBOutlet weak var durationtext: UITextField!
    
    
    @IBOutlet weak var nametext: UITextField!
    
    @IBOutlet weak var feestext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FirebaseApp.configure()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func savebutton(_ sender: UIButton) {
     ref = Database.database().reference()
        courseDic.setValue(nametext.text, forKey: "Name")
        courseDic.setValue(durationtext.text, forKey: "Duration")
        courseDic.setValue(feestext.text, forKey: "Fees")
        ref.child("Course").childByAutoId().setValue(courseDic)
        {
            (error,reference) in
            if ((error) != nil)
            {
                print("failed to insert:\(error?.localizedDescription)")
            }
            else
            {
                print("insert success")
            }
        }
        
    }
    

}

