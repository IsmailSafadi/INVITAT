//
//  ConstantShortcutsMacros.swift
//  SwiftTemplate
//
//  Created by Ismail Safadi on 7/23/17.
//  Copyright © 2017 YM. All rights reserved.
//

import UIKit


// MARK : Instance shortcuts
let NOTIFICATION_CENTER       = NotificationCenter.default
let FILE_MANAGER              = FileManager.default
let MAIN_BUNDLE               = Bundle.main
let MAIN_THREAD               = Thread.main
let MAIN_SCREEN               = UIScreen.main
let USER_DEFAULTS             = UserDefaults.standard
let APPLICATION               = UIApplication.shared
let CURRENT_DEVICE            = UIDevice.current
let MAIN_RUN_LOOP             = RunLoop.main
let GENERAL_PASTEBOARD        = UIPasteboard.general
let CURRENT_LANGUAGE          = NSLocale.current.languageCode
let isRTL                     = isRightToLeft()
// MARK : Network
let NETWORK_ACTIVITY          = APPLICATION.isNetworkActivityIndicatorVisible
let ENABLE_DEVELOPMENT        = 1
let DISABLE_APIs              = 0

// MARK : FONTS
let BOLDFONT              = UIConfiguration.getFontBoldName()
let REGULARFONT           = UIConfiguration.getRegularFontName()
let MEDIUMFONT            = UIConfiguration.getFontMediumName()
let HEAVEYFONT            = UIConfiguration.getFontHeaveyName()
let LIGHTFONT             = UIConfiguration.getFontLightName()
let EXTRALIGHTFONT        = UIConfiguration.getFontExtaLightName()
let SMALLFONT             = UIConfiguration.getFontSmallName()

// MARK : COLORS
let CLEAR_COLOR = UIColor.clear

// MARK : Application informations
let APPLICATION_NAME          = MAIN_BUNDLE.infoDictionary?[kCFBundleNameKey as String]
let APPLICATION_VERSION       = MAIN_BUNDLE.object(forInfoDictionaryKey: "CFBundleVersion")

func performOn(_ queueType: QueueType, closure: @escaping () -> Void) {
  queueType.queue.async(execute: closure)
}

func isRightToLeft() -> Bool {
  return APPLICATION.userInterfaceLayoutDirection == .rightToLeft
}

func delay(_ delay: TimeInterval, queueType: QueueType = .Main, closure: @escaping () -> Void) {
  let time = DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
  queueType.queue.asyncAfter(deadline: time, execute: closure)
}


class ConstantShortcutsMacros: NSObject {
//  class func isRightToLeft() -> Bool {
//    return APPLICATION.userInterfaceLayoutDirection == .rightToLeft
//  }
  
//  class func performOn(_ queueType: QueueType, closure: @escaping () -> Void) {
//    queueType.queue.async(execute: closure)
//  }
  
//  class func delay(_ delay: TimeInterval, queueType: QueueType = .Main, closure: @escaping () -> Void) {
//    let time = DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
//    queueType.queue.asyncAfter(deadline: time, execute: closure)
//  }



}
