//
//  BrowserViewController.swift
//  Calculador
//
//  Created by Guilherme Rocha on 19/06/2018.
//  Copyright © 2018 Guilherme Rocha. All rights reserved.
//

import UIKit

class BrowserViewController: UIViewController {
    
    @IBOutlet weak var myWebView: UIWebView!
    
    @IBAction func myBackButton(_ sender: Any) {
        if myWebView.canGoBack {
            myWebView.goBack()
        }
    }
    
    @IBAction func myRefreshButton(_ sender: Any) {
        myWebView.reload()
    }
    
    @IBAction func myFowardButton(_ sender: Any) {
        if myWebView.canGoForward {
            myWebView.goForward()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.loadRequest(URLRequest(url: URL(string: "http://www.calculador.com.br")!))
    }
}
