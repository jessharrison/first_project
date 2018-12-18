//
//  ViewController.swift
//  first_project
//
//  Created by Jessica Forsyth on 12/15/18.
//  Copyright © 2018 Jessica Forsyth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func changeColor(sender: UIButton) {
        print(sender.classForCoder)
        print(sender.superclass.debugDescription)
        
        let r = CGFloat(arc4random_uniform(255))
        let g = CGFloat(arc4random_uniform(255))
        let b = CGFloat(arc4random_uniform(255))

        let color = UIColor(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: 0)
        
        view.backgroundColor = color
    }

}

