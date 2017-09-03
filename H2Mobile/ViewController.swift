//
//  ViewController.swift
//  H2Mobile
//
//  Created by Ryan Levi on 9/2/17.
//  Copyright © 2017 Ryan Levi. All rights reserved.
//

import UIKit
import HealthKit

class ViewController: UIViewController {
    
    @IBOutlet weak var waterLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if HKHealthStore.isHealthDataAvailable() {
            print("yes")
            let healthManager = HealthManager()
            healthManager.requestPermissions()
        }
        else {
            print("no")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

