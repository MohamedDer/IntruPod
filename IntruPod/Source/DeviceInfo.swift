//
//  DeviceInfo.swift
//  IntruPod
//
//  Created by Mohamed Derkaoui on 18/02/2020.
//  Copyright © 2020 Mohamed Derkaoui. All rights reserved.
//

import Foundation

public class DeviceInfo: Codable {
    
    var UIID: String?
    var model: String
    var firmwareVersion: String
    var isPortraitOrientation: Bool
    var batteryLevel: Float
    
    init(UIID: String?,
        model: String,
        firmwareVersion: String,
        isPortraitOrientation: Bool,
        batteryLevel: Float) {
        self.UIID = UIID
        self.model = model
        self.firmwareVersion = firmwareVersion
        self.isPortraitOrientation = isPortraitOrientation
        self.batteryLevel = batteryLevel
    }
    
    public func toArray() -> [String:Codable] {
        return [ "UIID" : self.UIID,
                 "model" : self.model,
                 "firmwareVersion" : self.firmwareVersion,
                 "isPortraitOrientation": self.isPortraitOrientation,
                 "batteryLevel": self.batteryLevel ]
    }
    
}


