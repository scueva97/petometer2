//
//  Step3ViewController.swift
//  Petometer2
//
//  Created by Sebastian Cueva-Caro on 2/6/16.
//  Copyright © 2016 Opal. All rights reserved.
//

import UIKit
import Gifu

class Step3ViewController: UIViewController {

    @IBOutlet weak var squatImage: AnimatableImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.squatImage.animateWithImage(named: "Squats.gif")

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
