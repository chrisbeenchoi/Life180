//
//  ButtonViewController.swift
//  Life180
//
//  Created by Chris Choi on 10/31/22.
//

import UIKit
import LocationSpoofer

class ButtonViewController: UIViewController {
    
    @IBOutlet var spoofSwitch: UISwitch!
    @IBOutlet var spoofed: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func switchHit(_ sender: UISwitch) {
        if sender.isOn {
            // spoof location
            view.backgroundColor = .red
            let alcatraz = CLLocation(latitude: 37.825944, longitude: -122.422398)
            LocationSpoofer.shared.location = alcatraz
            spoofed.text = "TRANSPORTED"
        } else {
            // unspoof location
            view.backgroundColor = .white
            spoofed.text = "NORMALIZED"
        }
    }
    
}

