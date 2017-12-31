//
//  GeneralUtilities.swift
//  SwiftTemplate
//
//  Created by Ismail Safadi on 7/24/17.
//  Copyright © 2017 YM. All rights reserved.
//

import UIKit
import MRProgress

class GeneralUtilities: NSObject {
  
  // MARK : Add MRProgressOverlayView to main window
  class func networkProgress() -> MRProgressOverlayView {
    let window : UIWindow = getMainWindow()
    
    let overlayView  = MRProgressOverlayView.showOverlayAdded(to: window, animated: true)!
    overlayView.titleLabelText = ""
    overlayView.tintColor = UIColor.randomFlat
    return overlayView;
    
    
  }
  // MARK : Get top View Controller
  class func topMostController() -> UIViewController {
    return getMainWindow().rootViewController!
  }
  
  
  // MARK : Get main window
  class func getMainWindow() -> UIWindow {
    let delegate = APPLICATION.delegate as! AppDelegate
    return delegate.window!
  }
  
  // MARK: - Validations
  
  class func isValidEmailAddress(_ testStr:String) -> Bool {
    // println("validate calendar: \(testStr)")
    let emailRegEx = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"
    
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: testStr)
  }
  
  class func isValidateNumber(_ checkString: NSString) -> Bool {
    let numcharacters: CharacterSet = CharacterSet(charactersIn: "0123456789")
    var characterCount: Int32 = 0
    //        var i: Int
    for i in 0 ..< checkString.length {
      let character: unichar = checkString.character(at: i)
      if !numcharacters.contains(UnicodeScalar(character)!) {
        characterCount += 1
      }
    }
    if characterCount == 0 {
      return true
    } else {
      return false
      
    }
  }
  
  class func isValidateSaudiaNumber(_ checkString: NSString) -> Bool {
    //+966126123100
    //http://regexlib.com/Search.aspx?k=saudi&c=-1&m=-1&ps=20
    //https://gist.github.com/homaily/8672499
    //https://regex101.com
    let numcharacters: CharacterSet = CharacterSet(charactersIn: "^(009665|9665|+9665|05|+966)(5|0|3|6|4|9|1|8|7|2)([0-9]{7})")
    var characterCount: Int32 = 0
    //        var i: Int
    for i in 0 ..< checkString.length {
      let character: unichar = checkString.character(at: i)
      if !numcharacters.contains(UnicodeScalar(character)!) {
        characterCount += 1
      }
    }
    if characterCount == 0 {
      return true
    } else {
      return false
      
    }
  }
  
  class func isValidateAlphabet(_ checkString: NSString) -> Bool {
    let numcharacters: CharacterSet = CharacterSet(charactersIn: " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
    var characterCount: Int32 = 0
    //        var i: Int
    for i in 0 ..< checkString.length {
      let character: unichar = checkString.character(at: i)
      if !numcharacters.contains(UnicodeScalar(character)!) {
        characterCount += 1
      }
    }
    if characterCount == 0 {
      return true
    } else {
      return false
      
    }
  }
  
  class func isValidateAlphabetWithWhiteSpace(_ checkString: NSString) -> Bool {
    let numcharacters: CharacterSet = CharacterSet(charactersIn: " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ")
    var characterCount: Int32 = 0
    //        var i: Int
    
    for i in 0 ..< checkString.length {
      let character: unichar = checkString.character(at: i)
      if !numcharacters.contains(UnicodeScalar(character)!) {
        characterCount += 1
      }
    }
    if characterCount == 0 {
      return true
    } else {
      return false
      
    }
  }
  
  class func isValidStringNumericPlus(_ checkString: NSString) -> Bool {
    let numcharacters: CharacterSet = CharacterSet(charactersIn: "0123456789+")
    var characterCount: Int32 = 0
    //        var i: Int
    for i in 0 ..< checkString.length {
      let character: unichar = checkString.character(at: i)
      if !numcharacters.contains(UnicodeScalar(character)!) {
        characterCount += 1
      }
    }
    if characterCount == 0 {
      return true
    } else {
      return false
      
    }
  }
  
  // MARK: - Get Preferred Language
  
  class func getPrefferedLanguage() -> String {
    for languageItem in Locale.preferredLanguages {
      if languageItem == "en" || languageItem == "ru" || languageItem == "uk" || languageItem == "de" || languageItem == "fr" || languageItem == "it" || languageItem == "es" || languageItem == "ar" {
        return languageItem
      }
    }
    return "en"
  }
  
  // MARK: - Date Conversions
  
  class func convertStringDate(_ date: String, formatFrom: String, formatTo: String) -> String {
    let dateString: String = date
    let dateFormatter: DateFormatter = DateFormatter()
    // this is imporant - we set our input date format to match our input string
    // if format doesn't match you'll get nil from your string, so be careful
    dateFormatter.dateFormat = formatFrom
    var dateFromString: Date
    dateFromString = dateFormatter.date(from: dateString)!
    let formatter: DateFormatter = DateFormatter()
    formatter.dateFormat = formatTo
    //Optionally for time zone converstions
    formatter.timeZone = TimeZone(identifier: "...")
    let birthday: String = formatter.string(from: dateFromString)
    return birthday
  }
  
  class func convertDateToString(_ date: Date, withFormat Format: String) -> String {
    let formatter: DateFormatter = DateFormatter()
    formatter.dateFormat = Format
    let stringFromDate: String = formatter.string(from: date)
    return stringFromDate
  }
  
  class func convertStringToDate(_ date: String, formatFrom: String) -> Date {
    let myFormatter: DateFormatter = DateFormatter()
    myFormatter.timeZone = TimeZone.current
    //    [myFormatter setCalendar:[[NSCalendar alloc] initWithCalendarIdentifier:@"Gregorion"]];
    myFormatter.dateFormat = formatFrom
    let myDate: Date = myFormatter.date(from: date)!
    return myDate
  }

  
  /// Check if app is running in debug mode.
  public static var isInDebuggingMode: Bool {
    // http://stackoverflow.com/questions/9063100/xcode-ios-how-to-determine-whether-code-is-running-in-debug-release-build
    #if DEBUG
      return true
    #else
      return false
    #endif
  }
  
  /// Check if app is running in TestFlight mode.
  public static var isInTestFlight: Bool {
    // http://stackoverflow.com/questions/12431994/detect-testflight
    guard let path = Bundle.main.appStoreReceiptURL?.path else {
      return false
    }
    return path.contains("sandboxReceipt")
  }
  
  /// Check if application is running on simulator (read-only).
  public static var isRunningOnSimulator: Bool {
    // http://stackoverflow.com/questions/24869481/detect-if-app-is-being-built-for-device-or-simulator-in-swift
    #if (arch(i386) || arch(x86_64)) && (os(iOS) || os(watchOS) || os(tvOS))
      return true
    #else
      return false
    #endif
  }
  
  
  
}
