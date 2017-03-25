//
//  ViewController.swift
//  DIscountCalc
//
//  Created by CampusUser on 3/20/17.
//  Copyright © 2017 CampusUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var OGPrice: UITextField!
    
    @IBOutlet var DollarsOff: UITextField!

    @IBOutlet var PctOff: UITextField!
    
    @IBOutlet var PctOffTwo: UITextField!
    
    @IBOutlet var Tax: UITextField!
    
    @IBOutlet var OriginalPrice: UILabel!
    
    @IBOutlet var DiscountedPrice: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowCounterSegue"
        {
            if let destinationVC = segue.destination as? ViewControllerTwo {
                destinationVC.numberToDisplay = counter
            }
        }
    }
    
    
    
    
    
    
    //RIGHT BUTTON FUNCTION
    var counter = 0
    
    @IBAction func oButton(_ sender: Any) {
        counter += 1
    }
    
    


    //CALCULATOR FUNCTION
    @IBAction func CalculatePrice(_ sender: Any) {
        
        let ogp = Double(OGPrice.text!)! + ((Double(Tax.text!)!/100 * Double(OGPrice.text!)!))
        let dof = Double(DollarsOff.text!)
        
        let disc = ogp - dof!
        let pct = disc - ((Double(PctOff.text!)!/100) * disc)
        let add_pct = pct - ((Double(PctOffTwo.text!)!/100) * pct)
        
        
        
        //RESULTS
        OriginalPrice.text = String(format: "%.2f", ogp)
        DiscountedPrice.text = String(format: "%.2f", add_pct)
    }
}

