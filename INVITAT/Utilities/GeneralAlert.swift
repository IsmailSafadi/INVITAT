//
//  GeneralAlert.swift
//  SwiftTemplate
//
//  Created by Ismail Safadi on 7/24/17.
//  Copyright © 2017 YM. All rights reserved.
//

import UIKit



class GeneralAlert: NSObject {
  
  
  // MARK : Get top most view controller
  class func topViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
    //    if let navigationController = controller as? UINavigationController {
    //      return topViewController(controller: navigationController.visibleViewController)
    //    }
    //    if let tabController = controller as? UITabBarController {
    //      if let selected = tabController.selectedViewController {
    //        return topViewController(controller: selected)
    //      }
    //    }
    //    if let presented = controller?.presentedViewController {
    //      return topViewController(controller: presented)
    //    }
    //    return controller
    
    return GeneralUtilities.topMostController()
  }
  
  // MARK : Show session Expire Alert
  class func sessionExpireAlert(closure: @escaping () -> Void)  {
    let vc  = self.topViewController()
    
    performOn(.Main) {
      vc?.showAlertWithStyle(style:.Custom  ,title: "Alert".localized, message: "Session Expired".localized, cancelTitle: "Cancel".localized, cancelClosure: closure, otherTitle: nil, otherClosure:nil)
    }
  }
  
  // MARK : Show general Server Error
  class func generalServerError() {
    let vc  = self.topViewController()
    
    DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(1)) {
      vc?.showAlertWithStyle(style:.Custom, title: "Alert".localized, message: "Something went wrong. Please try it again later.".localized, cancelTitle: "OK".localized, cancelClosure: nil, otherTitle: nil, otherClosure:nil)
    }
  }

  // MARK : Show alert with type
  // MARK : Types (LOCATION_DENIED,CAMERA_DENIED,PHOTOS_DENIED,FACE_DETECTION_FAILED,NO_INTERNET_ACCESS)
  class  func alertWithType(alertType : ALERT_TYPE) {
    
    var stTitle: String = ""
    var  stMessage : String = ""
    let vc  = self.topViewController()
    
    switch alertType {
    case .LOCATION_DENIED:
      
      vc?.showAlertWithStyle(style:.Custom,title: "Location Service is Disabled".localized, message: "APP needs access to your location to able to use the app. Please turn on Location Services in your device settings.".localized, cancelTitle: "No Thanks".localized, cancelClosure: nil, otherTitle: "Go To Settings".localized, otherClosure:{
        let settingsUrl = URL(string: UIApplicationOpenSettingsURLString)!
        APPLICATION.open(settingsUrl, options: [:], completionHandler: nil)
      })
      break
      
    case .CAMERA_DENIED:
      vc?.showAlertWithStyle(style:.Custom,title: "Camera is Disabled".localized, message: "APP does not have access to your camera. To enable access, tap Settings and turn on Camera.".localized, cancelTitle: "No Thanks".localized, cancelClosure: nil, otherTitle: "Go To Settings".localized, otherClosure:{
        let settingsUrl = URL(string: UIApplicationOpenSettingsURLString)!
        APPLICATION.open(settingsUrl, options: [:], completionHandler: nil)
      })
      
      break
      
    case .PHOTOS_DENIED:
      vc?.showAlertWithStyle(style:.Custom,title: "Photo is Disabled".localized, message: "APP does not have access to your photos. To enable access, tap Settings and turn on Photos.".localized, cancelTitle: "No Thanks".localized, cancelClosure: nil, otherTitle: "Go To Settings".localized, otherClosure:{
        let settingsUrl = URL(string: UIApplicationOpenSettingsURLString)!
        APPLICATION.open(settingsUrl, options: [:], completionHandler: nil)
      })
      break
      
    case .FACE_DETECTION_FAILED:
      stTitle = "Mobile Data is Turned Off".localized
      stMessage = "Turn on mobile data or use Wi-Fi to access data.".localized
      break
      
    case .NO_INTERNET_ACCESS:
      vc?.showNoConnectionAlertWithStyle(style:.Custom)
      break
    }
    
    if alertType != .LOCATION_DENIED {
      vc?.showAlertWithStyle(style:.Custom,title: stTitle, message: stMessage, cancelTitle: "OK".localized, cancelClosure: nil, otherTitle: nil, otherClosure: nil)
    }
  }
  
  /*
   +(void)serverAlertWithType:(ResponseObject*)response
   {
   NSString *stTitle = LOCALIZED_STRING(@"Alert");
   NSString *stOK = LOCALIZED_STRING(@"Ok");
   UIViewController *vc = [GeneralUtilities topMostController];
   
   //    NSNumber *errorCode = (NSNumber*)response.errorCode;
   //    NSInteger iCode = errorCode.integerValue;
   NSString *stMessage = response.message;//NSString *stMessage = [self localizedStringForErrorCode:iCode];
   
   dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.6 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
   
   [vc showAlertWithTitle:stTitle message:stMessage andCancelButtonTitle:stOK withAlertAction:nil andOtherButtonTitle:nil withAlertAction:nil];
   });
   }
   
   +(void)serverAlertWithType:(ResponseObject*)response completion:(void(^)(void))completion
   {
   UIViewController *vc = [GeneralUtilities topMostController];
   NSString *stMessage = response.message;
   if(!stMessage || [stMessage isEqual:[NSNull null]] || stMessage.isEmpty)return;
   
   dispatch_async(dispatch_get_main_queue(), ^{
   [vc showAlertWithTitle:@"" message:stMessage andCancelButtonTitle:@"cancel" withAlertAction:^{
   if(completion)
   completion();
   
   } andOtherButtonTitle:nil withAlertAction:nil];
   
   });
   }
   
   */
}
