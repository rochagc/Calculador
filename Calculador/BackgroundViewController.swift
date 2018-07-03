//
//  BackgroundViewController.swift
//  Calculador
//
//  Created by Guilherme Rocha on 02/07/2018.
//  Copyright © 2018 Guilherme Rocha. All rights reserved.
//

import UIKit

class BackgroundViewController: UIViewController {
    
    override func viewDidLoad() {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        
        backgroundImage.image = UIImage(named: "fundo_calculador")
        
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        
        self.view.insertSubview(backgroundImage, at: 0)
    }
}
