//
//  Workouts.swift
//  MusicPlayer
//
//  Created by  on 4/19/21.
//  Copyright © 2021 MoApps. All rights reserved.
//

import UIKit

class Workouts: UIViewController
{

    var gender = "male"
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
       let slimGif = UIImage.gifImageWithName("simpsonsskinnygif")
       let imageView2 = UIImageView(image: slimGif)
       imageView2.frame = CGRect(x: 90.0, y: 200.0, width: self.view.frame.size.width - 177, height: 160.0)
       view.addSubview(imageView2)
        
        let jackedGif = UIImage.gifImageWithName("duffmangif")
        let imageView3 = UIImageView(image: jackedGif)
        imageView3.frame = CGRect(x: 90.0, y: 600.0, width: self.view.frame.size.width - 177, height: 160.0)
        view.addSubview(imageView3)
        
        let athleticGif = UIImage.gifImageWithName("weightbenchcoachgif")
        let imageView4 = UIImageView(image: athleticGif)
        imageView4.frame = CGRect(x: 90.0, y: 397.0, width: self.view.frame.size.width - 177, height: 160.0)
        view.addSubview(imageView4)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "nextSegue1"
            let destinationVC = segue.destination as! Time
            
            destinationVC.gender = gender
    }
    
}
