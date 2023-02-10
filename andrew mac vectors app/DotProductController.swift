//
//  DotProductController.swift
//  andrew mac vectors app
//
//  Created by Preston Higginbotham on 2/4/23.
//

import UIKit
import Foundation

class DotProductController: UIViewController {
    
    
    var dotProduct = DotProduct()

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var uiLabel: UITextField!
    @IBOutlet weak var ujLabel: UITextField!
    @IBOutlet weak var vjLabel: UITextField!
    @IBOutlet weak var viLabel: UITextField!
        
    var sigFigs: Int = 5
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func setUi(_ sender: Any) {
        if let temp = Double(uiLabel.text!) {
            dotProduct.ui = temp
        }
    }
    
    
    @IBAction func setVi(_ sender: Any) {
        if let temp = Double(viLabel.text!) {
            dotProduct.vi = temp
        }
    }
    
    @IBAction func setVj(_ sender: Any) {
        if let temp = Double(vjLabel.text!) {
            dotProduct.vj = temp
        }
    }
    
    @IBAction func setUj(_ sender: Any) {
        if let temp = Double(ujLabel.text!) {
            dotProduct.uj = temp
        }
    }
    
    @IBAction func dotCalculate(_ sender: Any) {
        resultLabel.text = String(format: "%.\(sigFigs)f", dotProduct.calculate())
    }
    
    
    
    
    
}
