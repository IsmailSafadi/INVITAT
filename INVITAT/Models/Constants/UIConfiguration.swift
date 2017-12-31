//
//  UIConfiguration.swift
//  SwiftTemplate
//
//  Created by Ismail Safadi on 7/23/17.
//  Copyright © 2017 YM. All rights reserved.
//

import UIKit
import Foundation

@objc class UIConfiguration :NSObject {
  static let debugClearBackground = UIColor.clear
  static let debugClearBackground2 = UIColor.clear
  static let cellSeparatorHeight = 2
  static let METERS_PER_MILE = 1609.344
  static let WhiteColor = UIColor.white
  static let kCollectionCellBorderTop = 12.0
  static let kCollectionCellBorderBottom = 12.0
  static let kCollectionCellBorderLeft = 12.0
  static let kCollectionCellBorderRight = 12.0
  static let kCollectionCellContentOriginX = 7.0
  static let kCollectionCellImageTitlePaddingY = 16.0
  static let kCollectionCellTitleDescriptionPaddingY = 7.0
  static let kCollectionCellDescriptionSeperatorPaddingY = 7.0
  static let kCollectionCellSeperatorCurrentLevelPaddingY = 7.0
  static let kCollectionCellCurrentLevelNextCouponPaddingY = 0
  static let kCollectionCellNextCouponButtonCouponPaddingY = 7.0
  static let kCollectionCellCurrentLevelNextCouponPaddingXRight = (ConstantDevices.IS_IPHONE_5) ? 64.0 : 85.0
  static let kCollectionCellCurrentLevelNextCouponWidth = 70.0//(IS_IPAD) ? 80.0 :
  
  static let kCollectionCellQuantityWidth = 50.0
  static let kCollectionCellCurrentButtonCouponWidth = UIImage(named: "CollectionCell_Coupon")!.size.width
  
  static let IPHONE5_FRAME = CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: 320, height: 568))
  static let IPHONE4_FRAME = CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: 320, height: 480))
  
  static let kCollectionViewBackground = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1)
  //for viewBack 		0
  static let MainNavBackColor = UIColor(red: 0.18, green: 0.2, blue: 0.24, alpha: 1)
  
  class func getMainNavBackColor() -> UIColor {
    return UIConfiguration.MainNavBackColor
  }
  
  static let MainSideMenu = UIColor(red: 243.0 / 255.0, green: 152.0 / 255.0, blue: 1.0 / 255.0, alpha: 1.0)
  static let MainNavBackNewsListColor = UIColor.white//[UIColor colorWithRed:233./255. green:233./255. blue:233./255. alpha:1.]
  
  static let MainBackColor = UIColor(red: 242.0 / 255.0, green: 244.0 / 255.0, blue: 235.0 / 255.0, alpha: 1.0)
  static let AdditionalBackColor = UIColor(red: 187.0 / 255.0, green: 191.0 / 255.0, blue: 179.0 / 255.0, alpha: 1.0)
  static let MainNavTitleColor = UIColor(red: 61.0 / 255.0, green: 79.0 / 255.0, blue: 90.0 / 255.0, alpha: 1.0)
  static let kColor_Actionsheet = UIColor(red: 49.0 / 255.0, green: 45.0 / 255.0, blue: 33.0 / 255.0, alpha: 1.0)
  //for black color
  static let BlackColor = UIColor.black
  //let WhiteColor = UIColor.whiteColor()
  static let grayColor = UIColor.gray
  // White Color
  static let ColorWhite = UIColor.white
  // Black Color
  static let ColorBlack = UIColor.black
  // Purple Color
  static let ColorPurple = UIColor(red: 236.0 / 255.0, green: 0.0 / 255.0, blue: 147.0 / 255.0, alpha: 1.0)
  // Dark Text Color
  static let ColorDarkText = UIColor(red: 98.0 / 255.0, green: 98.0 / 255.0, blue: 98.0 / 255.0, alpha: 1.0)
  // Dark Background Color
  static let ColorDarkBackground = UIColor(red: 20.0 / 255.0, green: 20.0 / 255.0, blue: 20.0 / 255.0, alpha: 1.0)
  // Section Header Bg Color
  static let ColorSectionHeaderBG = UIColor(red: 118.0 / 255.0, green: 118.0 / 255.0, blue: 118.0 / 255.0, alpha: 1.0)
  // Sunny Color
  static let ColorSunny = UIColor(red: 246.0 / 255.0, green: 122.0 / 255.0, blue: 22.0 / 255.0, alpha: 1.0)
  // Contrast Color
  static let ColorContrast = UIColor(red: 35.0 / 255.0, green: 35.0 / 255.0, blue: 35.0 / 255.0, alpha: 1.0)
  // Ocean Color
  static let ColorOcean = UIColor(red: 8.0 / 255.0, green: 34.0 / 255.0, blue: 61.0 / 255.0, alpha: 1.0)
  // Pop Color
  static let ColorPop = UIColor(red: 208.0 / 255.0, green: 0, blue: 2.0 / 255.0, alpha: 1.0)
  // Red Blue Color
  static let ColorRedBlue = UIColor(red: 37.0 / 255.0, green: 183.0 / 255.0, blue: 238.0 / 255.0, alpha: 1.0)
  // Pink Lady Color
  static let ColorPinkLady = UIColor(red: 166.0 / 255.0, green: 0, blue: 72.0 / 255.0, alpha: 1.0)
  //Gold Color
  static let ColorGold = UIColor(red: 216.0 / 255.0, green: 171.0 / 255, blue: 39.0 / 255.0, alpha: 1.0)
  // Red Color
  static let ColorRed = UIColor.red
  // Green Color
  static let ColorGreen = UIColor.green
  // Clear Color
  static let ColorClear = UIColor.clear
  // Light Gray Color
  static let ColorLightGray = UIColor.lightGray
  //#define ColorWithRGBAlpha(r,g,b,a)   [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
  static let appColor = UIColor(red: 85.0 / 255.0, green: 105.0 / 255.0, blue: 73.0 / 255.0, alpha: 1.0)
  static let menuColor = UIColor(red: 60.0 / 255.0, green: 78.0 / 255.0, blue: 89.0 / 255.0, alpha: 1.0)
  static let menuSeperatorColor = UIColor(red: 42.0 / 255.0, green: 121.0 / 255.0, blue: 172.0 / 255.0, alpha: 1.0)
  //for placeHolder text color
  static let kPlaceholderColor = UIColor(red: 61.0 / 255.0, green: 61.0 / 255.0, blue: 61.0 / 255.0, alpha: 1.0)
  static let LightTextColor = UIColor(red: 157.0 / 255.0, green: 157.0 / 255.0, blue: 157.0 / 255.0, alpha: 1.0)
  static let VeryLightTextColor = UIColor(red: 157.0 / 255.0, green: 157.0 / 255.0, blue: 157.0 / 255.0, alpha: 0.4)
  //for cell selected
  static let HighlightedColor = UIColor(red: 232.0 / 255.0, green: 236.0 / 255.0, blue: 223.0 / 255.0, alpha: 1.0)
  //redcolor
  static let RedColor = UIColor(red: 232.0 / 255.0, green: 121.0 / 255.0, blue: 86.0 / 255.0, alpha: 1.0)
  //yellowcolor
  static let YellowColor = UIColor(red: 255.0 / 255.0, green: 233.0 / 255.0, blue: 79.0 / 255.0, alpha: 1.0)
  //Profile Title Color
  static let ColorProfileTitle = UIColor(red: 41.0 / 255.0, green: 183.0 / 255.0, blue: 117.0 / 255.0, alpha: 1.0)
  //Profile Email Color
  static let BadgeColor = UIColor(red: 240.0 / 255.0, green: 58.0 / 255.0, blue: 62.0 / 255.0, alpha: 1.0)
  static let KPlaceholderImage: String = "brand-placeholder"
  
//  //Font Names
//  static let kFontRegularName: String = "Constantia"
//  
//  static let kFontBoldName: String = "Constantia-Bold"
//  
//  static let kFontItalicName: String = "Constantia-Italic"
//  
//  static let kFontBoldItalicName: String = "Constantia-BoldItalic"
//  
//  static let PlaceHolderImage = UIImage(named: "ImageName")
//  
//  static let UIFONTAPP:String = "HelveticaNeue"
//  static let UIFONTAPPBOLD:String = "HelveticaNeue-Bold"
//  static let UIFONTAPPITALIC:String = "HelveticaNeue-Italic"
  
  // MARK : Fonts
  
  // MARK : Arabic Fonts
  static let kARFontRegular : String                             = "beIN-ArabicNormal"
  static let kARFontMedium  : String                             = "AnNahar-Black"
  static let kARFontBold    : String                             = "AnNahar-Black"
  static let kARFontHeavey  : String                             = "Alyoum-ExtraBold"
  static let kARFontLight      : String                          = "beIN-ArabicThin"
  static let kARFontExtaLight   : String                         = "beIN-ArabicThin"
  static let kARFontSmall      : String                          = "beIN-ArabicThin"
  
  // MARK : English Fonts
  static let kENFontRegular    : String                          = "RobotoCondensed-Regular"
  static let kENFontMedium     : String                          = "RobotoCondensed-Italic"
  static let kENFontBold       : String                          = "RobotoCondensed-Bold"
  static let kENFontHeavey     : String                          = "RobotoCondensed-LightItalic"
  static let kENFontLight      : String                          = "RobotoCondensed-Light"
  static let kENFontExtaLight  : String                          = "RobotoCondensed-BoldItalic"
  static let kENFontSmall      : String                          = "RobotoCondensed-Light"
  
  
  class func getRegularFontName() -> String {
    if (isRTL) {
      return UIConfiguration.kARFontRegular
    } else {
      return UIConfiguration.kENFontRegular
    }
  }
  
  class func getFontMediumName() -> String {
    if (isRTL) {
      return UIConfiguration.kARFontMedium
    } else {
      return UIConfiguration.kENFontMedium
    }
  }
  
  class func getFontBoldName() -> String {
    if (isRTL) {
        return UIConfiguration.kARFontBold
    } else {
      return UIConfiguration.kENFontBold
    }

//    if (isRTL) {
//      if UIConfiguration.kARFontBold.characters.count > 0 {
//        return UIConfiguration.kARFontBold
//      } else {
//        return "Arial"
//      }
//    } else {
//      if UIConfiguration.kENFontBold.characters.count > 0 {
//        return UIConfiguration.kENFontBold
//      } else {
//        return "Arial"
//      }
//    }
  }
  
 class func getFontHeaveyName() -> String {
    if (isRTL) {
      return UIConfiguration.kARFontHeavey
    } else {
      return UIConfiguration.kENFontHeavey
    }
  }
  
 class func getFontLightName() -> String {
    if (isRTL) {
      return UIConfiguration.kARFontLight
    } else {
      return UIConfiguration.kENFontLight
    }
  }
  
 class func getFontExtaLightName() -> String {
    if (isRTL) {
      return UIConfiguration.kARFontExtaLight
    } else {
      return UIConfiguration.kENFontExtaLight
    }
  }
  
 class func getFontSmallName() -> String {
    if (isRTL) {
      return UIConfiguration.kARFontSmall
    } else {
      return UIConfiguration.kENFontSmall
    }
  }


  class func getFontWithString(fontName:String , sizeFont: CGFloat) -> UIFont {
    
    return UIFont(name: fontName, size: sizeFont)!
  }

  
  
  
}
