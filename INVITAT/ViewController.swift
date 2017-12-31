//
//  ViewController.swift
//  SwiftTemplate
//
//  Created by Ismail Safadi on 7/23/17.
//  Copyright © 2017 YM. All rights reserved.
//

import UIKit
import PromiseKit
import MRProgress

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

      
      // SAMPLES
      
//      performOn(.Main) {
//        let 🤗 = UIConfiguration.getFontWithString(fontName: HEAVEYFONT, sizeFont: 13)
//        print(🤗)
//      }
//      
//      if " ".isEmptyString() {
//        print("Hi".localized)
//      }

      
  }
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
  
    // SAMPLES

//    self.showSuccessAlertWithStyle(style: .System, message: "System".localized) {
//      self.showAlertWithStyle(style: .Custom, title: "Title".localized, message: "Message", cancelTitle: "Cancel", cancelClosure: { 
//        self.showNoConnectionAlertWithStyle(style: .Custom)
//
//      }, otherTitle: "Ok", otherClosure: {
//        self.showNoConnectionAlertWithStyle(style: .Custom)
//
//      })
//    }
    
}

    @IBAction func login(_ sender: UIButton) {
      let hud : MRProgressOverlayView = GeneralUtilities.networkProgress()
        API.testPostTask { (responseObject, error) in
          hud.hide(true)
            if responseObject != nil{
                if (responseObject?.success)!{
                    if (responseObject?.items.count)! > 0{
                        let user : User = (responseObject?.items.first!)!
                        self.showSuccessAlertWithStyle(style: .Custom, message: user.name, otherClosure: {
                        })
                    }
                    print("success")
                }
            }else{
                print("fail")
            }
        }
 
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

