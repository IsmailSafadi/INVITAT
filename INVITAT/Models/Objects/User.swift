//
//  User.swift
//  SwiftTemplate
//
//  Created by Ismail Safadi on 7/26/17.
//  Copyright © 2017 YM. All rights reserved.
//

import UIKit

class User: ResponseProtocol {

  var idInt: Int!
  var email:String?
  var name:String?
  var image:String?
  var city:String?
  var instagramUrl:String?
  var mobile:String?
  var twitterUrl:String?
  var facebookUrl:String?
  var store:String?
  var type: Int!
  var rating:Double?
  var ratingCount:Int?
  var ratingSum:Int?
  var status:Bool
  var bio:String?
  var messages:Bool
  var orders :Bool
  var specialOrders :Bool
		
  required init(dictionary: Dictionary<String, AnyObject>) {
  
    if let idInt_ = dictionary["id"] as? Int {
      idInt = idInt_
    }else{
      assertionFailure("Did not recive id" + NSStringFromClass(User.self))
    }

    if let email_ = dictionary["email"] as? String {
      email = email_
    }

    if let name_ = dictionary["name"] as? String {
      name = name_
    }

    if let image_ = dictionary["image"] as? String {
      image = image_
    }

    if let city_ = dictionary["city"] as? String {
      city = city_
    }

    if let inst_ = dictionary["ins"] as? String {
      instagramUrl = inst_
    }

    if let tw_ = dictionary["tw"] as? String {
      twitterUrl = tw_
    }

    if let fb_ = dictionary["fb"] as? String {
      facebookUrl = fb_
    }

    if let bio_ = dictionary["bio"] as? String {
      bio = bio_
    }

    if let store_ = dictionary["store"] as? String {
      store = store_
    }

    if let mobile_ = dictionary["mobil"] as? String {
      mobile = mobile_
    }else if let mob_ = dictionary["mobil"] as? Int {
    mobile = String(format: "%i", mob_)
    }
    
    if let type_ = dictionary["type"] as? Int {
      type = type_
    }

    if let ratingSum_ = dictionary["rating_sum"] as? Int {
      ratingSum = ratingSum_
    }

    if let ratingCount_ = dictionary["rating_count"] as? Int {
      ratingCount = ratingCount_
    }

    if let rating_ = dictionary["rating"] as? Double {
      rating = rating_
    }

    if let messages_ = dictionary["messages"] as? Bool {
      messages = messages_
    }else{
    messages = false
    }

    if let orders_ = dictionary["orders"] as? Bool {
      orders = orders_
    }else{
      orders = false
    }

    if let status_ = dictionary["status"] as? Bool {
      status = status_
    }else{
      status = false
    }

    if let sorders_ = dictionary["special_orders"] as? Bool {
      specialOrders = sorders_
    }else{
      specialOrders = false
    }
  }
}
