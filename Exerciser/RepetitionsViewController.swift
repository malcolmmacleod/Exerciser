//
//  RepetitionsViewController.swift
//  Exerciser
//
//  Created by Malcolm Macleod on 31/07/2015.
//  Copyright (c) 2015 Malcolm Macleod. All rights reserved.
//

import UIKit

class RepetitionsViewController: UIViewController {
    
    
    @IBOutlet weak var repetitionsTextField: UITextField!
    
    var numberOfRepetitions : Int? {
        didSet {
            repetitionsTextField?.text = "\(numberOfRepetitions!)"
        }
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
