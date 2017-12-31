//
//  AppConstants.swift
//  SwiftTemplate
//
//  Created by Ismail Safadi on 7/23/17.
//  Copyright © 2017 YM. All rights reserved.
//

import UIKit


public enum QueueType {
  case Main
  case Background
  case LowPriority
  case HighPriority
  
  var queue: DispatchQueue {
    switch self {
    case .Main:
      return DispatchQueue.main
    case .Background:
      return DispatchQueue(label: "com.app.queue",
                           qos: .background,
                           target: nil)
    case .LowPriority:
      return DispatchQueue.global(qos: .userInitiated)
    case .HighPriority:
      return DispatchQueue.global(qos: .userInitiated)
    }
  }
}

enum ALERT_TYPE : Int
{
  case LOCATION_DENIED
  case NO_INTERNET_ACCESS
  case FACE_DETECTION_FAILED
  case CAMERA_DENIED
  case PHOTOS_DENIED
}

enum AlertTypeStyle : Int
{
  case System
  case Custom
}


enum ValidationType : Int
{
  case ValidationTypeError
  case ValidationTypeAlert
}

enum FA_LOG_TYPE : Int
{
  case LOG_TYPE_DEBUG
  case LOG_TYPE_INFO
  case LOG_TYPE_WARNING
  case LOG_TYPE_ERROR
}


enum FontType : Int {
  
  case RegularFontType
  case UltraLightFontType
  case LightFontType
  case MediumFontType
  case BoldFontType
  case HeaveyFontType
  case SmallFontType
}

class AppConstants: NSObject {
  static let INAVALIDE_TOKEN_ID = 5
  
  // MARK : - API Related
  
  static let kAPIBaseURL                                 = "http://gazlapp.com/api/"
  static let kWebsiteURL                                 = ""
  
  static let kUsername                                   = ""
  static let kPassword                                   = ""
  
  static let FA_SUCCESS                                  = 200
  static let FA_RESPONSE_CODE                           = "response_code"
  
  // MARK : API requests samples
  static let kAPIForgotPasswordPath                      = ""
  static let kAPISignupPath                              = ""
  static let kAPISigninPath                              = "login"
  static let kAPIUpdateProfilePath                       = ""
  static let kAPIChangePasswordPath                      = ""
  static let kAPIGetTailorsPath                          = "tailors_data"
  
  
  // MARK : Social Apps Keys
  static let kFacebookID                                 = ""
  static let kInstagramID                                = ""
  static let kTwitterClientID                            = ""
  static let kTwitterClientSecret                        = ""
  static let kGoogleID                                   = ""
  static let kLinkedInID                                 = ""
  
  // MARK :  oAuth 2.0 Keys
  static let kClientID                                   = ""
  static let kClientSecret                               = ""
  
  
  // MARK : NSDate Formaters
  
  static let kDateFormatStandard                         = "yyyy-MM-dd HH:mm:ss.SZ"
  static let kDateFormatShort                            = "yyyy-MM-dd"
  static let kDateFormatPaymentCardExpiry                = "MM/yy"
  
  
  // MARK : UI
  
  static let kAnimationDuration                             = 0.25
  static let kdeleteAnimationDuration                       = 0.12
  static let kMainColorCode                              = "a83b7d"
  static let kErrorColorCode                             = "ED1B24"
  
  // MARK : Notification
  
  static let kNotificationForLoseInternetConnection      = "kNotificationForLoseInternetConnection"
  static let kNotificationForReturnInternetConnection    = "kNotificationForReturnInternetConnection"
  
  
  // MARK : UserDefaults
  
  static let kAccessToken                                = "kAccessToken"
  static let kRefreshToken                               = "kRefreshToken"
  static let kFirstLunch                                 = "kFirstLunch"
  static let kDeviceToken                                = "device_token"
  static let kCurrentUser                                = "current_user"

  
}
