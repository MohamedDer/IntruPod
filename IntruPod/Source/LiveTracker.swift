//
//  LiveTracker.swift
//  IntruPod
//
//  Created by Mohamed Derkaoui on 17/02/2020.
//  Copyright © 2020 Mohamed Derkaoui. All rights reserved.
//

import Foundation
import UIKit

public class LiveTracker {
    
    static public let shared = LiveTracker()
    private let serverURLString = "https://my-secret-tracking-api.com"
    
    public func sendDeviceReport() {
        guard let url = URL(string: self.serverURLString) else {
            print("Invalid URL")
            return
        }
        var request = URLRequest(url: url)
        let session = URLSession.shared
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.httpBody = try! JSONSerialization.data(withJSONObject:  self.getDeviceInfo().toArray(), options: [])
        session.dataTask(with: request as URLRequest) { data, response, error in
            // Parse the server's response/error
        }.resume()
    }
    
    public func getDeviceInfo() -> DeviceInfo {
        let deviceInfo = DeviceInfo(
            UIID: self.getUIID(),
            model: self.getModel(),
            firmwareVersion: self.getFirmwareVersion(),
            isPortraitOrientation: self.getScreenOrientation().isPortrait,
            batteryLevel: self.getBatteryLevel()
        )
        return deviceInfo
    }
    
    // MARK: INTERNAL UTILS
    private func getUIID() -> String? {
        return UIDevice.current.identifierForVendor?.uuidString
    }
    
    private func getModel() -> String {
        return UIDevice.current.model
    }
    
    private func getFirmwareVersion() -> String {
        return UIDevice.current.systemVersion

    }
    
    private func getScreenOrientation() -> UIDeviceOrientation {
        return UIDevice.current.orientation
    }
    
    private func getBatteryLevel() -> Float {
        return UIDevice.current.batteryLevel
    }

}
