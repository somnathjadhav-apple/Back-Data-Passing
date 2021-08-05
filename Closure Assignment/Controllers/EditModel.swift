//
//  ViewController3.swift
//  Closure Assignment
//
//  Created by Somnath on 20/07/21.
//

import UIKit

class ViewController3: UIViewController {
    
    var closureVC3 : ((String, String, String) -> ())?
    
    // MARK: TextField
    @IBOutlet weak var brandTextField: UITextField!
    @IBOutlet weak var modelTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func updateLabel(){
        
        if let vc2 = self.storyboard?.instantiateViewController(identifier: "ViewController2") as? ViewController2{
            print(vc2)
            if let carBrand = brandTextField?.text, let model = modelTextField?.text, let year = yearTextField?.text{
                // MARK: Closure used to transfer data
                closureVC3?(carBrand, model, year)
            }
            self.navigationController?.popViewController(animated: true)
        }
    }
}
