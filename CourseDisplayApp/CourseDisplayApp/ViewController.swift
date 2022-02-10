//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Peddinti,Sai Lavanya on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var Crsnum: UILabel!
    
    @IBOutlet weak var crstitle: UILabel!
    
    @IBOutlet weak var crssem: UILabel!
    
    @IBOutlet weak var previousbutton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    let courses=[["img01","44555","Network Security","Fall 2022"],
                 ["img02","44643","iOS","Spring 2022"],
                 ["img03","44656","Data Screaming","Summer 2022"]   ]
    var imageNumber=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//load the first course details(image,courseNum,title and seme)
        displayImage.image = UIImage(named:courses[0][0])
//rendering data(values) to label
        Crsnum.text=courses[0][1]
        crstitle.text=courses[0][2]
        crssem.text=courses[0][3]
        updateUI(imageNumber)
//previous button should be disbaled
        previousbutton.isEnabled=false
    }

    @IBAction func previousButtonClick(_ sender: UIButton) {
       //next button
        nextButton.isEnabled=true
        //update UI
        imageNumber -= 1
        updateUI(imageNumber)
        //once u reach first screen previous should be disabaled
        if(imageNumber == 0)
        {
            previousbutton.isEnabled=false
        }
        
    }
    
    @IBAction func nextButtonClick(_ sender: UIButton) {
        //update the UI and
        imageNumber += 1
        updateUI(imageNumber)
        //previous should be enabled
        previousbutton.isEnabled=true
        //once u reach end of array the next button shoudl be disabled
        if(imageNumber == courses.count-1)
        {
            nextButton.isEnabled=false
        }
    }
    func updateUI(_ imageNum: Int){
        displayImage.image = UIImage(named:courses[imageNum][0])
        Crsnum.text=courses[imageNum][1]
        crstitle.text=courses[imageNum][2]
        crssem.text=courses[imageNum][3]
    }
}

