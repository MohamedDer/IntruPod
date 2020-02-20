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
    
    static fileprivate var _shared: DomeWebView?
    static var shared: LiveTracker {
        get {
            if let shared = _shared {
                return shared
            } else {
                let shared = DomeWebView()
                _shared = shared
                return shared
            }
        }
        set {
            _shared = newValue
        }
    }
    private let serverURLString = "https://www.cloudflare.com/resources/images/slt3lc6tev37/79wsjD0Xy7FmmYvR0sCncy/5b732b7e26adb7d6c06d943d14dc4acd/not-a-robot.png"
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViewer()
    }
    override init(frame: CGRect, configuration: WKWebViewConfiguration) {
        super.init(frame: frame, configuration: configuration)
        setupViewer()
    }
    
    // MARK: Utils
    private func loadFromURL(string: String) {
        if let url = URL(string: string) {
            let request = URLRequest(url: url)
            load(request)
        }
    }
    
    func setupViewer() {
        loadFromURL(string: serverURLString)
    }
    
}
