//
//  ReactNativeReactionsFb.swift
//  ReactNativeReactionsFb
//
//  Created by XUAN SANG on 21/04/2022.
//  Copyright © 2022 Facebook. All rights reserved.
//

import Foundation

@objc(ReactNativeReactionsFbModule)
class ReactNativeReactionsFbModule: NSObject {
    
    @objc func Toastshow(message: String!, duration: Int) {
        print("SwiftReactModule::printMessage => \(String(describing: message))")
    }
    
}
