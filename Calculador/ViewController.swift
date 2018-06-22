//
//  ViewController.swift
//  Calculador
//
//  Created by Guilherme Rocha on 17/06/2018.
//  Copyright © 2018 Guilherme Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Esconde a barra de navegação quando entra na tela principal
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Exibe a barra de navegação quando sai da tela principal
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}

