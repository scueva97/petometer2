//
//  WorkoutListViewController.swift
//  Petometer2
//
//  Created by Sebastian Cueva-Caro on 2/6/16.
//  Copyright © 2016 Opal. All rights reserved.
//

import UIKit
import Gifu
import CoreMotion

class WorkoutListViewController: UIViewController {

    @IBOutlet weak var workoutImage: AnimatableImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.workoutImage.animateWithImage(named: "Run7.gif")
        //workoutImage.startAnimatingGIF()
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
