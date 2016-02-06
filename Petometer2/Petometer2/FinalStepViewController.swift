//
//  FinalStepViewController.swift
//  Petometer2
//
//  Created by Sebastian Cueva-Caro on 2/6/16.
//  Copyright © 2016 Opal. All rights reserved.
//

import UIKit
import Gifu

class FinalStepViewController: UIViewController {

    @IBOutlet weak var mustacheImage: AnimatableImageView!
    @IBOutlet weak var bowImage: AnimatableImageView!
    @IBOutlet weak var hatImage: AnimatableImageView!
    @IBOutlet weak var sunglassImage: AnimatableImageView!
    @IBOutlet weak var scarfImage: AnimatableImageView!
    @IBOutlet weak var eyepatchImage: AnimatableImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mustacheImage.animateWithImage(named: "Run3.gif")
        self.bowImage.animateWithImage(named: "Run4.gif")
        self.scarfImage.animateWithImage(named: "Run5.gif")
        self.eyepatchImage.animateWithImage(named: "Run6.gif")
        self.sunglassImage.animateWithImage(named: "Run1.gif")
        self.hatImage.animateWithImage(named: "Walk7.gif")


        




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
