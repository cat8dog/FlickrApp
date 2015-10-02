//
//  StoryViewController.swift
//  FlickrApp
//
//  Created by Catherine Reyto on 2015-09-23.
//  Copyright (c) 2015 Catherine Reyto. All rights reserved.
//

import UIKit


class DisplayViewController: UIViewController {
    
   // http://stackoverflow.com/questions/29582200/how-do-i-get-the-views-inside-a-container-in-swift
    
    private var embeddedViewController: StoryCollectionViewController!
    
    @IBAction func showStory(sender: AnyObject) {
        println("STORY!")
    }
  
    @IBOutlet var imageArray: UIImageView!
    
    var mockImages = ["day44.jpg", "day45.jpg", "day47.jpg", "day48.jpg", "day49.jpg"]
    
    // counter = 0

    
    @IBOutlet var storyContainer: UIView!
    
    @IBOutlet var testArray: UILabel!
    
    //  @IBOutlet var showStory: UIButton!
    
    var mockTitles = ["Day 44", "Day 45", "day 47", "day 48", "day 49"]
    
    var counter = 0
    //var storyAlpha:UIView = UIView(storyContainer)
    
    @IBAction func nextLabel(sender: AnyObject) {
        println("tapped!")
        if counter >= mockTitles.count {
            counter = 0
        }
        if counter >= mockImages.count {
            counter = 0
        }
        
        updateLabel()
        updateImage()
        counter++
    }
    
    
    
    func updateLabel() {
        var chosenTitle = mockTitles[counter]
        testArray.text = chosenTitle
        println("\(chosenTitle)")
    }

    func updateImage() {
        var chosenImage: UIImage = UIImage (named: (mockImages[counter]))!
        imageArray.image = chosenImage
        println("\(chosenImage)")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
   //     self.embeddedViewController
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let vc = segue.destinationViewController as? StoryCollectionViewController
            where segue.identifier == "EmbedSegue" {
                self.embeddedViewController = vc
        }
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
