//
//  ConstantDevices.swift
//  SwiftTemplate
//
//  Created by Ismail Safadi on 7/23/17.
//  Copyright © 2017 YM. All rights reserved.
//

import UIKit
import Foundation

@objc class ConstantDevices: NSObject {

  static let SCREEN_WIDTH = (((UIApplication.shared.statusBarOrientation == UIInterfaceOrientation.portrait) || (UIApplication.shared.statusBarOrientation == UIInterfaceOrientation.portraitUpsideDown)) ? UIScreen.main.bounds.size.width : UIScreen.main.bounds.size.height)
  static let SCREEN_HEIGHT = (((UIApplication.shared.statusBarOrientation == UIInterfaceOrientation.portrait) || (UIApplication.shared.statusBarOrientation == UIInterfaceOrientation.portraitUpsideDown)) ? UIScreen.main.bounds.size.height : UIScreen.main.bounds.size.width)
  static let SCREEN_MAX_LENGTH = (max(SCREEN_WIDTH, SCREEN_HEIGHT))
  static let SCREEN_MIN_LENGTH = (min(SCREEN_WIDTH, SCREEN_HEIGHT))
  static let IS_IPHONE_4_OR_LESS = (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
  static let IS_IPHONE_5 = (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
  static let IS_IPHONE_6 = (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
  static let IS_IPHONE_6P = (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)

  //MARK : Device informations
  static let DEVICE_MODEL = CURRENT_DEVICE.model
  static let DEVICE_LOCALIZED_MODEL = CURRENT_DEVICE.localizedModel
  //static let DEVICE_PLATFORM = CURRENT_DEVICE.platform
  static let DEVICE_SYSTEM_NAME = CURRENT_DEVICE.systemName
  static let DEVICE_SYSTEM_VERSION = CURRENT_DEVICE.systemVersion
  
  //MARK : Device screen specifications / interface idiom
  static let IS_IPAD = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad
  static let IS_IPHONE = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone
  
  class func isIS_IPAD() -> Bool {
    return ConstantDevices.IS_IPAD
  }
  
  //MARK : IOS Versions
  static let IS_IOS_6 = floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1
  static let IS_IPHONE_5_IOS7 = (IS_IPHONE && UIScreen.main.bounds.size.height == 568.0)
  static let IS_IPHONE_6_IOS7 = (IS_IPHONE && UIScreen.main.bounds.size.height == 667.0)
  static let IS_IPHONE_6P_IOS7 = (IS_IPHONE && UIScreen.main.bounds.size.height == 736.0)
  static let IS_IPHONE_4_AND_OLDER_IOS7 = (IS_IPHONE && UIScreen.main.bounds.size.height < 568.0)
  static let IS_IPHONE_4_OR_5 = (IS_IPHONE && UIScreen.main.bounds.size.height <= 568.0)
  static let IS_IPHONE_4_OR_5_OR_6 = (IS_IPHONE && UIScreen.main.bounds.size.height <= 667.0)
  static let IS_IPHONE_4_OR_5_OR_6_OR_6P = (IS_IPHONE && UIScreen.main.bounds.size.height <= 736.0)

  static let IS_IOS6_AND_UP = (CFloat(UIDevice.current.systemVersion)! >= 6.0)
  static let IS_IOS7_AND_UP = (CFloat(UIDevice.current.systemVersion)! >= 7.0)
  static let IS_IOS8_AND_UP = (CFloat(UIDevice.current.systemVersion)! >= 8.0)
  static let IS_IOS9_AND_UP = (CFloat(UIDevice.current.systemVersion)! >= 9.0)
  
  
  
  
  
  class func isIS_IOS6_AND_UP() -> Bool {
    return ConstantDevices.IS_IOS6_AND_UP
  }
  
  class func isIS_IOS7_AND_UP() -> Bool {
    return ConstantDevices.IS_IOS7_AND_UP
  }
  
  class func isIS_IOS8_AND_UP() -> Bool {
    return ConstantDevices.IS_IOS8_AND_UP
  }
  
  class func isIS_IOS9_AND_UP() -> Bool {
    return ConstantDevices.IS_IOS9_AND_UP
  }
  

}
