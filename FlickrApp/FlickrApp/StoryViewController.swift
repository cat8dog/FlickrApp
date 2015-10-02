//
//  StoryViewController.swift
//  FlickrApp
//
//  Created by Catherine Reyto on 2015-09-23.
//  Copyright (c) 2015 Catherine Reyto. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {
    
    
    @IBOutlet var testArray: UILabel!
    
    //  @IBOutlet var showStory: UIButton!
    
    var mockTitles = ["Day 44", "Day 45", "day 47", "day 48", "day 49"]
    var counter = 0
    
    
    @IBAction func nextLabel(sender: AnyObject) {
        println("tapped!")
        if counter >= mockTitles.count {
            counter = 0
        }
        
        updateLabel()
        counter++
    }
    
    
    
    func updateLabel() {
        var chosenTitle = mockTitles[counter]
        testArray.text = chosenTitle
        println("\(chosenTitle)")
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
