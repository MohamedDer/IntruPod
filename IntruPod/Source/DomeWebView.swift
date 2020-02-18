//
//  DomeWebView.swift
//  IntruPod
//
//  Created by Mohamed Derkaoui on 17/02/2020.
//  Copyright © 2020 Mohamed Derkaoui. All rights reserved.
//

import Foundation
import UIKit
import WebKit


public class DomeWebView: WKWebView {
    
    static public let shared = DomeWebView()
    
    public func loadFromURL(string: String) {
        if let url = URL(string: string) {
            let request = URLRequest(url: url)
            load(request)
        }
        
    }
    
}
