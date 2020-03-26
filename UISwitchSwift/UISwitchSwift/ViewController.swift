//
//  ViewController.swift
//  UISwitchSwift
//
//  Created by Field Employee on 3/26/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var `switch`: UISwitch!
    @IBOutlet weak var lightImg: UIImageView!
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        `switch`.setOn(defaults.bool(forKey: "switch"), animated: true)
        label.text = setLabel(defaults.bool(forKey: "switch"))
        lightImg.image = setImage(defaults.bool(forKey: "switch"))
    }

    @IBAction func switchSateDidChanged(_ sender: Any) {
        defaults.set(`switch`.isOn, forKey: "switch")
        `switch`.setOn(`switch`.isOn, animated: true)
        label.text = setLabel(`switch`.isOn)
        lightImg.image = setImage(`switch`.isOn)
    }
    
    func setLabel(_ state: Bool) -> String {
        return state ? "Lights On" : "Lights Off"
    }
    
    func setImage(_ state: Bool) -> UIImage {
        return state ? #imageLiteral(resourceName: "on") : #imageLiteral(resourceName: "off")
    }
    
}

