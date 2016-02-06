//
//  Step1ViewController.swift
//  Petometer2
//
//  Created by Sebastian Cueva-Caro on 2/6/16.
//  Copyright © 2016 Opal. All rights reserved.
//

import UIKit
import Gifu

class Step1ViewController: UIViewController {
    
    
    @IBOutlet weak var pushupImage: AnimatableImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.pushupImage.animateWithImage(named: "PushUp.gif")

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
