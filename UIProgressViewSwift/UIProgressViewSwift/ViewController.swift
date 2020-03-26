//
//  ViewController.swift
//  UIProgressViewSwift
//
//  Created by Field Employee on 3/26/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myProgress: UIProgressView!
    @IBOutlet weak var myLabel: UILabel!
    
    var current: Int = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myProgress.progress = Float(0)
        // Write message.
        myLabel.text = "Processing \(0) of \(10)..."
    }

    @IBAction func actionTriggered(_ sender: Any) {
        // Get current values.
        let i = current
        let max = 10
        // If we still have progress to make.
        if i <= max {
            // Compute ratio of 0 to 1 for progress.
            let ratio = Float(i) / Float(max)
            // Set progress.
            UIView.animate(withDuration: 1.0) {
                // self.progressView.setProgress(1.0, animated: true)
                self.myProgress.setProgress(Float(ratio), animated: true)
            }
            // myProgress.progress = Float(ratio)
            // Write message.
            myLabel.text = "Processing \(i) of \(max)..."
            current += 1
        }
    }
    
}

