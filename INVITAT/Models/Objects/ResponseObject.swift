//
//  ResponseObject.swift
//  SwiftTemplate
//
//  Created by Ismail Safadi on 7/26/17.
//  Copyright © 2017 YM. All rights reserved.
//

import UIKit

class EmptyObject: ResponseProtocol {
  
  required init(dictionary withDictionary: Dictionary<String, AnyObject>) {
    
  }
}
class ResponseObject <T:ResponseProtocol> {
  
  fileprivate(set) var success:Bool
  fileprivate(set) var items:[T]
  fileprivate(set) var message:String?
  
  
  
  init(dictionary:Dictionary<String, AnyObject>) {
    
    if let success_ = dictionary["status"] as? NSDictionary {
      
      if let success_ = success_["status"] as? Bool {
        success = success_
      }else{
        success = false
      }
    }else{
      success = false
    }
    
    if let items_ = dictionary["items"] as? Array<Dictionary<String, AnyObject>> {
      items = []
      for itemDic in items_ {
        let item = T(dictionary: itemDic)
        items.append(item)
      }
    }else if let respponse_ = dictionary["items"] as? Dictionary<String, AnyObject>{
      
      let item = T(dictionary: respponse_)
      items = [item]
    }
    else {
      self.items = []
    }
    
    
    if let message_ = dictionary["message"] as? String {
      message = message_
    }
    
  }
}



