//
//  NextViewController.swift
//  firebase.pgdemo
//
//  Created by Bhushan on 1/7/20.
//  Copyright © 2020 Bhushan Badhe. All rights reserved.
//

import UIKit
import Firebase

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var reference : DatabaseReference
        reference = Database.database().reference()
        reference.observeSingleEvent(of: .value, with: { (snapshot) in
            let dic = snapshot
            print(dic)
            
        })
        

        // Do any additional setup after loading the view.
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
