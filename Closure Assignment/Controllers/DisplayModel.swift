//
//  ViewController.swift
//  Closure Assignment
//
//  Created by Somnath on 19/07/21.
//

import UIKit

class ViewController1: UIViewController {
    
    var car = [Car]()
    // MARK: Label outlets
    @IBOutlet weak var carBrand: UILabel!
    @IBOutlet weak var model: UILabel!
    @IBOutlet weak var year: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        navigationItem.backButtonTitle = "Home"
    }
    
    @IBAction func pushTo2(){
        //storyboard?.instantiateViewController -> The storyboard uses it to locate the appropriate data for your view controller.
        if let vc2 = self.storyboard?.instantiateViewController(identifier: "ViewController2") as? ViewController2{
            
            vc2.closureVC2 = {carBrand, model, year in
                
                self.carBrand?.text = carBrand
                self.model?.text = model
                self.year?.text = String(year)
            }
            // to navigate to VC2
            self.navigationController?.pushViewController(vc2, animated: true)
        }
    }
}

