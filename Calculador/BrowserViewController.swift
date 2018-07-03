//
//  BrowserViewController.swift
//  Calculador
//
//  Created by Guilherme Rocha on 19/06/2018.
//  Copyright © 2018 Guilherme Rocha. All rights reserved.
//

import UIKit

class BrowserViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var myWebView: UIWebView!
    
    @IBAction func myBackButton(_ sender: Any) {
        if myWebView.canGoBack {
            myWebView.goBack()
        }
    }
    
    @IBAction func myFowardButton(_ sender: Any) {
        if myWebView.canGoForward {
            myWebView.goForward()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myWebView.delegate = self
        
        myWebView.loadRequest(URLRequest(url: URL(string: "http://www.calculador.com.br")!))
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        let alertaController = UIAlertController(title: "", message: "Não foi possível carregar o site. Verifique sua conexão com a internet", preferredStyle: .alert)
        
        let alertaConfirmar = UIAlertAction(title: "OK", style: .default, handler: { _ in self.navigationController!.popToRootViewController(animated: true) })
        
        alertaController.addAction(alertaConfirmar)
        
        present(alertaController, animated: true, completion: nil)
    }

}
