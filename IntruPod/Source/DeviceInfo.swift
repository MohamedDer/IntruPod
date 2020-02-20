//
//  DeviceInfo.swift
//  IntruPod
//
//  Created by Mohamed Derkaoui on 18/02/2020.
//  Copyright © 2020 Mohamed Derkaoui. All rights reserved.
//

import Foundation

public class DeviceInfo: Codable {
    
    var UUID: String?
    var model: String
    var firmwareVersion: String
    var isPortraitOrientation: Bool
    var batteryLevel: Float
    
    init(UUID: String?,
        model: String,
        firmwareVersion: String,
        isPortraitOrientation: Bool,
        batteryLevel: Float) {
        self.UUID = UUID
        self.model = model
        self.firmwareVersion = firmwareVersion
        self.isPortraitOrientation = isPortraitOrientation
        self.batteryLevel = batteryLevel
    }
    
    public func toArray() -> [String:Codable] {
        return [ "UUID" : self.UUID,
                 "model" : self.model,
                 "firmwareVersion" : self.firmwareVersion,
                 "isPortraitOrientation": self.isPortraitOrientation,
                 "batteryLevel": self.batteryLevel ]
    }
    
}


