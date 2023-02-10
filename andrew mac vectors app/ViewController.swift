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
    @IBOutlet weak var sigFigSlider: UISlider!
    @IBOutlet weak var sigFigsLabel: UILabel!
    
    let dotProductController = DotProductController()
    
    var sigFig = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        crossProductView.isHidden = true
        dotProductView.isHidden = false
        sigFigsLabel.text = "Sig Figs: \(Int(sigFigSlider.value))"
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
    
    @IBAction func getSliderValue(_ sender: Any) {
        sigFig = Int(sigFigSlider.value)
        sigFigsLabel.text = "Sig Figs: \(Int(sigFigSlider.value))"
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
        // Create a variable to store the name the user entered on textField
            
        // Create a new variable to store the instance of the SecondViewController
        // set the variable from the SecondViewController that will receive the data
        let destinationVC = segue.destination as! CrossProductController
        destinationVC.sigFigs = sigFig
    }
    
    
    
}

