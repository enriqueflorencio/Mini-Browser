//
//  ViewController.swift
//  hackingwithswiftproject4
//
//  Created by Enrique Florencio on 6/3/19.
//  Copyright © 2019 Enrique Florencio. All rights reserved.
//

//testing

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    //We need to setup our webView so that we can load it into our actual view
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.hackingwithswift.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }


}

