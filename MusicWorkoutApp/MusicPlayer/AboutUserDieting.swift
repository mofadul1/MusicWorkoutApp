//
//  AboutUserDieting.swift
//  MusicPlayer
//
//  Created by  on 4/28/21.
//  Copyright © 2021 MoApps. All rights reserved.
//

import UIKit

class AboutUserDieting: UIViewController
{

    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        let dietGif = UIImage.gifImageWithName("homerDiet")
        let imageView5 = UIImageView(image: dietGif)
        imageView5.frame = CGRect(x: 32.0, y: 300.0, width: self.view.frame.size.width - 65, height: 280.0)
        view.addSubview(imageView5)
        
    }
    
    
}
