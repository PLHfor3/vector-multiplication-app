//
//  ViewController.swift
//  andrew mac vectors app
//
//  Created by Preston Higginbotham on 2/4/23.
//

import UIKit

var toggleDotCross = false

class ViewController: UIViewController {

    @IBOutlet weak var dotProductView: UIView!
    @IBOutlet weak var crossProductView: UIView!
    @IBOutlet weak var sigFigsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        crossProductView.isHidden = true
        dotProductView.isHidden = false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleCrossOrDot(_ sender: Any) {
        if toggleDotCross == false {
            
            crossProductView.isHidden = false
            dotProductView.isHidden = true
            toggleDotCross = true
        }
        else {
            crossProductView.isHidden = true
            dotProductView.isHidden = false
            toggleDotCross = false
            
        }
    }
    
    
}

