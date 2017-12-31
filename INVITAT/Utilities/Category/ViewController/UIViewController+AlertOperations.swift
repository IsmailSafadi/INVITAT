//
//  UIViewController+AlertOperations.swift
//  SwiftTemplate
//
//  Created by Ismail Safadi on 7/23/17.
//  Copyright © 2017 YM. All rights reserved.
//
import PromiseKit
import UIKit
import NYAlertViewController
import ChameleonFramework

extension UIViewController{
  
  typealias AlertViewDismissHandler = () -> Void
  
  
  func showAlertWithStyle(style:AlertTypeStyle,title: String?, message: String?,cancelTitle:String?, cancelClosure:(AlertViewDismissHandler)?,otherTitle : String?,otherClosure: (AlertViewDismissHandler)?)  {
    
    switch style {
    case .System:
      self.showDefaultAlertWithTitle(title, message: message, cancelTitle: cancelTitle, cancelClosure: cancelClosure, otherTitle: otherTitle, otherClosure: otherClosure)
      break
      
    case .Custom:
      self.showAlertWithTitle(title: title, message: message, cancelTitle: cancelTitle, dismissCompletion: cancelClosure, otherTitle: otherTitle, otherAction: otherClosure)
      break
      
    }
  }
  
  func showSuccessAlertWithStyle(style:AlertTypeStyle, message: String?,otherClosure: (AlertViewDismissHandler)?)  {
    
    switch style {
    case .System:
      self.showSuccessDefaultAlertViewWithMessage(message: message, otherClosure: otherClosure)
      break
      
    case .Custom:
      self.showSuccessAlertViewWithMessage(message: message, otherClosure: otherClosure)
      break
      
    }
  }

  func showNoConnectionAlertWithStyle(style:AlertTypeStyle)  {
    switch style {
    case .System:
      self.showDefaultAlertNoConnection()
      break
      
    case .Custom:
      self.showAlertNoConnection()
      break
      
    }
  }

  
  private func showDefaultAlertWithTitle(_ title: String?, message: String?,cancelTitle:String?, cancelClosure:(AlertViewDismissHandler)?,otherTitle : String?,otherClosure: (AlertViewDismissHandler)?)
  {
    let alert: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    
    if cancelTitle != nil {
      let cancelAction: UIAlertAction = UIAlertAction(title: cancelTitle, style: .cancel) { action -> Void in
        if cancelClosure != nil {
          cancelClosure!()
        }
      }
      alert.addAction(cancelAction)
    }
    
    if otherTitle != nil {
      let otherAction: UIAlertAction = UIAlertAction(title: otherTitle, style: .default) { action -> Void in
        if otherClosure != nil{
          otherClosure!()
        }
      }
      alert.addAction(otherAction)
    }
    self.present(alert, animated: true, completion: nil)
    
  }
  
  
  private func showSuccessDefaultAlertViewWithMessage(message : String?,otherClosure: (AlertViewDismissHandler)?)  {
    
    self.showDefaultAlertWithTitle("Success".localized, message: message, cancelTitle: nil, cancelClosure: nil, otherTitle: "Ok".localized, otherClosure: otherClosure)
    
  }
  
  private func showDefaultAlertNoConnection() {
    
    self.showDefaultAlertWithTitle("internt_title".localized, message: "internt_msg".localized, cancelTitle: "Cancel".localized, cancelClosure: nil, otherTitle:nil, otherClosure: nil)
  }
  
  
  private func showAlertWithTitle(title:String?,message : String? ,cancelTitle:String?,dismissCompletion:(AlertViewDismissHandler)?,otherTitle : String?,otherAction:(AlertViewDismissHandler)?) {
    
    let alert = self.createAlertViewController()
    
    alert.title = title
    alert.message = message
    
    if cancelTitle != nil {
      let action = NYAlertAction(
        title: cancelTitle,
        style: .cancel,
        handler: { (action: NYAlertAction!) -> Void in
          self.dismiss(animated: true, completion: {
            if dismissCompletion != nil{
              dismissCompletion!()
            }
          })
      }
      )
      alert .addAction(action)
    }
    
    if otherTitle != nil {
      let action = NYAlertAction(
        title: otherTitle,
        style: .default,
        handler: { (action: NYAlertAction!) -> Void in
          self.dismiss(animated: true, completion: {
            if otherAction != nil{
              otherAction!()
            }
          })
      }
      )
      
      alert .addAction(action)
      
    }
    
    self.present(alert, animated: true, completion: nil)
  }
  
  private func showSuccessAlertViewWithMessage(message : String?,otherClosure: (AlertViewDismissHandler)?)  {
    self.showAlertWithTitle(title: "Success".localized, message: message, cancelTitle: nil, dismissCompletion: nil, otherTitle:"Ok".localized, otherAction: otherClosure)
  }
  
  private func showAlertNoConnection() {
    
    self.showAlertWithTitle(title: "internt_title".localized, message: "internt_msg".localized, cancelTitle: "Cancel".localized, dismissCompletion: nil, otherTitle:nil, otherAction: nil)
  }
  
  private func createAlertViewController () -> NYAlertViewController{
    
    let alertViewController = NYAlertViewController()
    alertViewController.buttonCornerRadius = 20.0
    alertViewController.buttonTitleColor = UIColor.white
    alertViewController.buttonColor = UIColor(hexString:AppConstants.kMainColorCode)
    alertViewController.destructiveButtonTitleColor = UIColor.white
    alertViewController.destructiveButtonColor = UIColor(hexString:AppConstants.kMainColorCode)
    alertViewController.cancelButtonTitleColor = UIColor.white
    alertViewController.cancelButtonColor = UIColor(hexString:AppConstants.kErrorColorCode)
    
    
    alertViewController.view.tintColor = self.view.tintColor
    alertViewController.backgroundTapDismissalGestureEnabled = false
    alertViewController.swipeDismissalGestureEnabled = false
    alertViewController.transitionStyle = .fade
    alertViewController.titleFont =  UIConfiguration.getFontWithString(fontName: BOLDFONT, sizeFont: alertViewController.titleFont.pointSize)
    alertViewController.messageFont =  UIConfiguration.getFontWithString(fontName: REGULARFONT, sizeFont: alertViewController.messageFont.pointSize)
    alertViewController.buttonTitleFont =  UIConfiguration.getFontWithString(fontName: REGULARFONT, sizeFont: alertViewController.buttonTitleFont.pointSize)
    alertViewController.cancelButtonTitleFont =  UIConfiguration.getFontWithString(fontName: REGULARFONT, sizeFont: alertViewController.cancelButtonTitleFont.pointSize)
    alertViewController.destructiveButtonTitleFont =  UIConfiguration.getFontWithString(fontName: REGULARFONT, sizeFont: alertViewController.cancelButtonTitleFont.pointSize)
    
    return alertViewController
  }
}
