//
//  Time.swift
//  MusicPlayer
//
//  Created by  on 5/28/21.
//  Copyright © 2021 MoApps. All rights reserved.
//

import UIKit

class Time: UIViewController
{
    
    var gender = "male"
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func upperBodyButton(_ sender: UIButton)
    {
        if gender == "male"
        {
            performSegue(withIdentifier: "maleSegue", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "femaleSegue", sender: self)
        }
    }
    
    @IBAction func lowerBodyButton(_ sender: UIButton)
    {
        if gender == "male"
        {
            performSegue(withIdentifier: "maleLowerSegue", sender: self)
        }
        else
        {
            performSegue(withIdentifier: "femaleLowerSegue", sender: self)
        }
    }
    
    
}
