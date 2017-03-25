//
//  ViewControllerTwo.swift
//  DIscountCalc
//
//  Created by CampusUser on 3/24/17.
//  Copyright © 2017 CampusUser. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    
    @IBOutlet var counterLabel: UILabel!
    var numberToDisplay = 0
    
    
    func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        counterLabel.text = "The counter was tapped \(numberToDisplay) times."
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
