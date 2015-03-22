//
//  ViewController.swift
//  Koordinates
//
//  Created by Ulysses E. Legaspi on 3/9/15.
//  Copyright (c) 2015 VulcanSmithy. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendButton(sender: AnyObject) {
        println("Sending...")
        Alamofire.request(.GET, "http://koordinates.192.168.1.101.xip.io/api/user/1/waypoints").responseJSON { (_, _, JSON, _) in
            println(JSON)
        }
    }
}

