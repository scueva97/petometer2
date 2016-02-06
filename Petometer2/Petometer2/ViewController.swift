//
//  ViewController.swift
//  Petometer2
//
//  Created by Sebastian Cueva-Caro on 2/5/16.
//  Copyright © 2016 Opal. All rights reserved.
//

import UIKit
import CoreMotion
import Gifu

class ViewController: UIViewController {
    
    @IBOutlet weak var activityState: UILabel!
    @IBOutlet weak var steps: UILabel!
    
    
    var days:[String] = []
    var stepsTaken:[Int] = []
    
    @IBOutlet weak var stateImageView: UIImageView!
    let activityManager = CMMotionActivityManager()
    let pedoMeter = CMPedometer()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let calFlags: NSCalendarUnit = [.Year, .Month, .Day, .Hour, .Minute, .Second]
        let cal = NSCalendar.currentCalendar()
        let comps = cal.components(calFlags, fromDate: NSDate())
        comps.hour = 0
        comps.minute = 0
        comps.second = 0
        let timeZone = NSTimeZone.systemTimeZone()
        cal.timeZone = timeZone
        
        let midnightOfToday = cal.dateFromComponents(comps)!
        
        
        self.activityState.text = "Get up and move!"
        self.stateImageView.image = UIImage(named: "Egg2.png")//change this to an egg
        
        /**
        array of stationary gif
        let stationaryList = ["Stationary.gif","Stationary2.gif","Stationary3.gif","Stationary4.gif","Stationary5.gif","Stationary6.gif","Stationary7.gif"]
        
        array of walking gif
        let walkingList = ["Walk.gif","Walk2.gif","Walk3.gif","Walk4.gif","Walk5.gif","Walk6.gif","Walk7.gif"]
        
        array of running gif
        let runningList = ["Run.gif","Run2.gif","Run3.gif","Run4.gif","Run5.gif","Run6.gif","Run7.gif"]
        */

        if(CMMotionActivityManager.isActivityAvailable()){
            self.activityManager.startActivityUpdatesToQueue(NSOperationQueue.mainQueue(), withHandler: { (data: CMMotionActivity?) -> Void in
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    
                    
                    if(data!.stationary == true){
                        self.activityState.text = "Stationary"
                        
                        self.stateImageView.image = UIImage(named: "StationaryStill.png")
                        /**
                        randomizer
                        let randomNumber = Int(arc4random_uniform(8))
                        let gifName = stationaryList[randomNumber]
                        self.stateImageView.animateWithImage(named: gifName)
                        self.stateImageView.animateWithImage(named: "StationaryStill.png")
                        */
                    } else if (data!.walking == true){
                        self.activityState.text = "Walking"
                        
                        self.stateImageView.image = UIImage(named: "WalkStill.png")
                        /**
                        randomizer
                        let randomNumber = Int(arc4random_uniform(8))
                        let gifName = walkingList[randomNumber]
                        self.stateImageView.animateWithImage(named: gifName)
                        self.stateImageView.image = UIImage(named: "WalkStill.png")
                        */
                    } else if (data!.running == true){
                        self.activityState.text = "Running"
                        
                        self.stateImageView.image = UIImage(named: "RunStill.png")

                        /**
                        randomizer
                        let randomNumber = Int(arc4random_uniform(8))
                        let gifName = runningList[randomNumber]
                        self.stateImageView.animateWithImage(named: gifName)
                        self.stateImageView.image = UIImage(named: "RunStill.png")
                        */
//                    } else if (data!.automotive == true){
//                        self.activityState.text = "Automotive"
//                    }
                    }
                })
                
            })
        }
        if(CMPedometer.isStepCountingAvailable()){
            let fromDate = NSDate(timeIntervalSinceNow: -86400 * 7)
            self.pedoMeter.queryPedometerDataFromDate(fromDate, toDate: NSDate()) { (data : CMPedometerData?, error) -> Void in
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    if(error == nil){
                        self.steps.text = "\(data!.numberOfSteps)" 
                    }
                })
                
            }
            
            self.pedoMeter.startPedometerUpdatesFromDate(midnightOfToday) { (data: CMPedometerData?, error) -> Void in
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    if(error == nil){
                        self.steps.text = "\(data!.numberOfSteps)"
                    }
                })
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}