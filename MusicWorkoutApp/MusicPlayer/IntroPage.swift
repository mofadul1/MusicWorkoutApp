//
//  IntroPage.swift
//  MusicPlayer
//
//  Created by  on 4/16/21.
//  Copyright © 2021 MoApps. All rights reserved.
//

import UIKit

class IntroPage: UIViewController
{
    //@IBOutlet weak var IntroPageImageView: UIImageView!
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()

        let homerGif = UIImage.gifImageWithName("HomerWorkout")
        let imageView = UIImageView(image: homerGif)
        imageView.frame = CGRect(x: 9.0, y: 45.0, width: self.view.frame.size.width - 20, height: 366.0)
        view.addSubview(imageView)
        
        let bartGif = UIImage.gifImageWithName("22H")
        let imageView1 = UIImageView(image: bartGif)
        imageView1.frame = CGRect(x: 9.0, y: 450.0, width: self.view.frame.size.width - 20, height: 315.0)
        view.addSubview(imageView1)
    }
    
//    @IBAction func MusicButtonTapped(_ sender: UIButton)
//    {
//
//    }
    @IBAction func MusicButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func GISButtonTapped(_ sender: UIButton) {
    }
    
}
