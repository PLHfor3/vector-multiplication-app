//
//  CrossProductController.swift
//  andrew mac vectors app
//
//  Created by Preston Higginbotham on 2/5/23.
//

import UIKit

class CrossProductController: UIViewController {
    
    var sigFigs: Int = 0
    
    var crossProduct = CrossProduct()
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var uiLabel: UITextField!
    @IBOutlet weak var ukLabel: UITextField!
    @IBOutlet weak var ujLabel: UITextField!
    @IBOutlet weak var viLabel: UITextField!
    @IBOutlet weak var vjLabel: UITextField!
    @IBOutlet weak var vkLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setUi(_ sender: Any) {
        if let temp = Double(uiLabel.text!) {
            crossProduct.ui = temp
        }
    }
    
    @IBAction func setUj(_ sender: Any) {
        if let temp = Double(ujLabel.text!) {
            crossProduct.uj = temp
        }
    }
    
    @IBAction func setUk(_ sender: Any) {
        if let temp = Double(ukLabel.text!) {
            crossProduct.uk = temp
        }
    }
    
    @IBAction func setVi(_ sender: Any) {
        if let temp = Double(viLabel.text!) {
            crossProduct.vi = temp
        }
    }
    
    @IBAction func setVj(_ sender: Any) {
        if let temp = Double(vjLabel.text!) {
            crossProduct.vj = temp
        }
    }
    
    @IBAction func setVk(_ sender: Any) {
        if let temp = Double(vkLabel.text!) {
            crossProduct.vk = temp
        }
    }
    
    @IBAction func crossCalculate(_ sender: Any) {
        resultLabel.text = String(format: "%.\(sigFigs)f", crossProduct.calculate())
    }
}
