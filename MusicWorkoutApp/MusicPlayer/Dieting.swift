//
//  Dieting.swift
//  MusicPlayer
//
//  Created by  on 4/19/21.
//  Copyright © 2021 MoApps. All rights reserved.
//

import UIKit

class Dieting: UIViewController
{

    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        let mistakeGif = UIImage.gifImageWithName("burnsMistake")
        let imageView6 = UIImageView(image: mistakeGif)
        imageView6.frame = CGRect(x: 32.0, y: 250.0, width: self.view.frame.size.width - 65, height: 280.0)
        view.addSubview(imageView6)
        
        
    }
    
    
    @IBAction func goBackButtonPressed(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }
    

}
