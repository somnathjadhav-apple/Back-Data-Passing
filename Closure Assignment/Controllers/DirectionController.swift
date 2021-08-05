//
//  ViewController2.swift
//  Closure Assignment
//
//  Created by Somnath on 20/07/21.
//

import UIKit

class ViewController2: UIViewController {
    
    var closureVC2 : ((String, String, String) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pushTo3(){
        if let vc3 = self.storyboard?.instantiateViewController(identifier: "ViewController3") as? ViewController3{
            vc3.closureVC3 = self.closureVC2
            self.navigationController?.pushViewController(vc3, animated: true)
        }
    }
    
    @IBAction func popTo1(){
        if let vc1 = self.storyboard?.instantiateViewController(identifier: "ViewController1") as? ViewController1{
            print(vc1)
        }
        self.navigationController?.popViewController(animated: true)
    }
}
