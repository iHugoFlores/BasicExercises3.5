//
//  ViewController.swift
//  UIStepperSwift
//
//  Created by Field Employee on 3/26/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var label : UILabel!
    var stepper : UIStepper!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func loadView() {
        // UI
        let view = UIView()
        view.backgroundColor = .red
        
        label = UILabel()

        stepper = UIStepper()
        stepper.tintColor = .white
        stepper.addTarget(self, action: #selector(updateView), for: .valueChanged)
        stepper.value = 15
        stepper.minimumValue = -100
        stepper.maximumValue = 100
        stepper.stepValue = 5

        view.addSubview(label)
        view.addSubview(stepper)
        
        self.view = view
        self.updateView()
        
        // Layout
        label.translatesAutoresizingMaskIntoConstraints = false
        stepper.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),

            stepper.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 20),
            stepper.centerYAnchor.constraint(equalTo: label.centerYAnchor),
        ])
        
    }
    
    @objc func updateView() {
        label.text = "Counter: \(Int(stepper.value))"
    }
    
}

