//
//  API.swift
//  SwiftTemplate
//
//  Created by Ismail Safadi on 7/26/17.
//  Copyright © 2017 YM. All rights reserved.
//


import UIKit
import AFNetworking

class API: NSObject {

  // Creating a Data Task -> Request WITHOUT parameters
 @discardableResult
  static func testDataTask(completionHandler withCompletionHandler: ((_ responseObject:ResponseObject<EmptyObject>?, _ error: NSError?) -> Void)?) -> URLSessionDataTask {
    
    // URL
    let url = URL(string: "blog/10", relativeTo: URL(string:AppConstants.kAPIBaseURL))!
    
    // Add files to uplaed
    let request:URLRequest = URLRequest(url: url)
    
    let dataTask = HTTPSessionManager.sharedManager().dataTask(with: request) { (response, responseObject, error) -> Void in
      // Error
      if (error != nil) {
        // Print Response Body
        if let responseBody = (error! as NSError).userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey] as? Data {
          let responseBodyString = String(data: responseBody, encoding: String.Encoding.utf8)
          print("Error with response body: \(String(describing: responseBodyString))");
        }
        print(error!.localizedDescription);
        print("Error Response Object: \(String(describing: responseObject))");
        
        if withCompletionHandler != nil {
          withCompletionHandler!(nil, error as NSError?)
        }
        
      } else {
        print("Success: \(response)")
        print("Response Object: \(String(describing: responseObject))")
        
        let object: ResponseObject<EmptyObject>?
        if let dictionary = responseObject as? Dictionary<String, AnyObject> {
          object = ResponseObject(dictionary: dictionary)
        } else {
          object = nil
        }
        
        if withCompletionHandler != nil {
          withCompletionHandler!(object, error as NSError?)
        }
      }
    }
    
    dataTask.resume()
    
    return dataTask
  }
  
  // Creating a Data Task -> Request WITH parameters
  // GET with Data
 @discardableResult static func testGetTask(completionHandler withCompletionHandler: ((_ responseObject:ResponseObject<User>?, _ error: NSError?) -> Void)?) -> URLSessionDataTask {
    
    // URL
    let url = URL(string: "blog/10", relativeTo: URL(string:AppConstants.kAPIBaseURL))!
    
    // Parameters
    let parameters:[String: AnyObject] = ["foo": "bar" as AnyObject]
    
    let request:NSMutableURLRequest = AFHTTPRequestSerializer().request(withMethod: "GET", urlString: url.absoluteString, parameters: parameters, error: nil)
    
    // GET http://example.com?foo=bar&baz[]=1&baz[]=2&baz[]=3
    
    let dataTask = HTTPSessionManager.sharedManager().dataTask(with: request as URLRequest) { (response, responseObject, error) -> Void in
      // Error
      if (error != nil) {
        // Print Response Body
        if let responseBody = (error!as NSError).userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey] as? Data {
          let responseBodyString = String(data: responseBody, encoding: String.Encoding.utf8)
          print("Error with response body: \(String(describing: responseBodyString))");
        }
        print(error!.localizedDescription);
        print("Error Response Object: \(String(describing: responseObject))");
        // print("Parameters: \(parameters)")
        
        if withCompletionHandler != nil {
          withCompletionHandler!(nil, error as NSError?)
        }
        
      } else {
        print("Success: \(response)")
        print("Response Object: \(String(describing: responseObject))")
        // print("Parameters: \(parameters)")
        
        let object: ResponseObject<User>?
        if let dictionary = responseObject as? Dictionary<String, AnyObject> {
          object = ResponseObject(dictionary: dictionary)
        } else {
          object = nil
        }
        
        if withCompletionHandler != nil {
          withCompletionHandler!(object, error as NSError?)
        }
      }
    }
    
    dataTask.resume()
    
    return dataTask
    
  }
  
  
  // POST Data
 @discardableResult
  static func testPostTask(completionHandler withCompletionHandler: ((_ responseObject:ResponseObject<User>?, _ error: NSError?) -> Void)?) -> URLSessionDataTask {
    
    // URL
    let url = URL(string: "login", relativeTo: URL(string:AppConstants.kAPIBaseURL))!
    
    // Parameters
    let parameters:[String: AnyObject] = ["email": "yusuf@mail.com" as AnyObject ,"password":"123123" as AnyObject]
    
    let request:NSMutableURLRequest = AFHTTPRequestSerializer().request(withMethod: "POST", urlString: url.absoluteString, parameters: parameters, error: nil)
    
    /*
     POST http://example.com/
     Content-Type: application/x-www-form-urlencoded
     
     foo=bar&baz[]=1&baz[]=2&baz[]=3
     */
    
    let dataTask = HTTPSessionManager.sharedManager().dataTask(with: request as URLRequest) { (response, responseObject, error) -> Void in
      // Error
      if (error != nil) {
        // Print Response Body
        if let responseBody = (error! as NSError).userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey] as? Data {
          let responseBodyString = String(data: responseBody, encoding: String.Encoding.utf8)
          print("Error with response body: \(String(describing: responseBodyString))");
        }
        print(error!.localizedDescription);
        print("Error Response Object: \(String(describing: responseObject))");
        // print("Parameters: \(parameters)")
        
        if withCompletionHandler != nil {
          withCompletionHandler!(nil, error as NSError?)
        }
        
      } else {
        print("Success: \(response)")
        print("Response Object: \(String(describing: responseObject))")
        // print("Parameters: \(parameters)")
        
        let object: ResponseObject<User>?
        if let dictionary = responseObject as? Dictionary<String, AnyObject> {
          object = ResponseObject(dictionary: dictionary)
        } else {
          object = nil
        }
        
        if withCompletionHandler != nil {
          withCompletionHandler!(object, error as NSError?)
        }
      }
    }
    
    dataTask.resume()
    
    return dataTask
  
  }
  
  
  // POST JSON
  
  @discardableResult static func testPostJSONTask(completionHandler withCompletionHandler: ((_ responseObject:ResponseObject<User>?, _ error: NSError?) -> Void)?) -> URLSessionDataTask {
    
    // URL
    let url = URL(string: "blog/10", relativeTo: URL(string:AppConstants.kAPIBaseURL))!
    
    // Parameters
    let parameters:[String: AnyObject] = ["foo": "bar" as AnyObject]
    
    let request:NSMutableURLRequest = AFJSONRequestSerializer().request(withMethod: "POST", urlString: url.absoluteString, parameters: parameters, error: nil)
    
    /*
     POST http://example.com/
     Content-Type: application/json
     
     {"foo": "bar", "baz": [1,2,3]}
     */
    let dataTask = HTTPSessionManager.sharedManager().dataTask(with: request as URLRequest) { (response, responseObject, error) -> Void in
      // Error
      if (error != nil) {
        // Print Response Body
        if let responseBody = (error! as NSError)
          .userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey] as? Data {
          let responseBodyString = String(data: responseBody, encoding: String.Encoding.utf8)
          print("Error with response body: \(String(describing: responseBodyString))");
        }
        print(error!.localizedDescription);
        print("Error Response Object: \(String(describing: responseObject))");
        // print("Parameters: \(parameters)")
        
        if withCompletionHandler != nil {
          withCompletionHandler!(nil, error as NSError?)
        }
        
      } else {
        print("Success: \(response)")
        print("Response Object: \(String(describing: responseObject))")
        // print("Parameters: \(parameters)")
        
        let object: ResponseObject<User>?
        if let dictionary = responseObject as? Dictionary<String, AnyObject> {
          object = ResponseObject(dictionary: dictionary)
        } else {
          object = nil
        }
        
        if withCompletionHandler != nil {
          withCompletionHandler!(object, error as NSError?)
        }
      }
    }
    
    dataTask.resume()
    
    return dataTask
    
  }
  
  
  
  
  
  /**
   *  Files
   */
  
  
  /**
   Creating an Upload Task, with Progress
   */
 @discardableResult static func testUpload(progress withProgress:((_ uploadProgress: Progress) -> Void)?, completionHandler: ((_ responseObject:ResponseObject<User>?, _ error: NSError?) -> Void)?) -> URLSessionUploadTask  {
    
    // URL
    let url = URL(string: "upload", relativeTo: URL(string:AppConstants.kAPIBaseURL))!
    
    // Add files to uplaed
    let request:URLRequest = URLRequest(url: url)
    
    let filePath = URL(fileURLWithPath:"file://path/to/image.png")
    
    let uploadTask: URLSessionUploadTask
    uploadTask = HTTPSessionManager.sharedManager().uploadTask(with: request, fromFile: filePath, progress: { (uploadProgress) -> Void in
      if withProgress != nil {
        withProgress!(uploadProgress)
      }
      print("%lld of %lld (%f)", uploadProgress.completedUnitCount, uploadProgress.totalUnitCount, uploadProgress.fractionCompleted);
      
    }, completionHandler: { (response, responseObject, error) -> Void in
      // Error
      if (error != nil) {
        
        // Print Response Body
        if let responseBody = (error! as NSError).userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey] as? Data {
          let responseBodyString = String(data: responseBody, encoding: String.Encoding.utf8)
          print("Error with response body: \(String(describing: responseBodyString))");
        }
        print(error!.localizedDescription);
        print("Error Response Object: \(String(describing: responseObject))");
        // print("Parameters: \(parameters)")
        
        if completionHandler != nil {
          completionHandler!(nil, error as NSError?)
        }
        
      } else {
        print("Success: \(response)")
        print("Response Object: \(String(describing: responseObject))")
        // print("Parameters: \(parameters)")
        
        
        let object: ResponseObject<User>?
        if let dictionary = responseObject as? Dictionary<String, AnyObject> {
          object = ResponseObject(dictionary: dictionary)
        } else {
          object = nil
        }
        
        if completionHandler != nil {
          completionHandler!(object, error as NSError?)
        }
      }
      
    })
    
    
    uploadTask.resume()
    
    return uploadTask
    
  }
  
  
  
  
  /**
   Creating an Upload Task for a Multi-Part Request, with Progress
   */
 @discardableResult static func testUploadTaskForAMultiPartRequest(progress withProgress:((_ uploadProgress: Progress) -> Void)?, completionHandler: ((_ responseObject:ResponseObject<User>?, _ error: NSError?) -> Void)?) -> URLSessionUploadTask {
    
    // URL
    let url = URL(string: "upload", relativeTo: URL(string:AppConstants.kAPIBaseURL))!
    
    // Parameters
    let parameters:[String: AnyObject] = ["foo": "bar" as AnyObject]
    
    // Add files to uplaed
    let request:NSMutableURLRequest = AFHTTPRequestSerializer().multipartFormRequest(withMethod: "POST", urlString: url.absoluteString, parameters: parameters, constructingBodyWith: { (formData) -> Void in
      
      do {
        try formData.appendPart(withFileURL: URL(fileURLWithPath:"file://path/to/image.jpg"), name: "file", fileName: "filename.jpg", mimeType: "image/jpeg")
        
      } catch _ {
        print("Something went wrong!")
      }
      
    }, error: nil)
    
    
    // Send to server
    
    let uploadTask:URLSessionUploadTask
    uploadTask = HTTPSessionManager.sharedManager().uploadTask(withStreamedRequest: request as URLRequest, progress: { (uploadProgress) -> Void in
      
      if withProgress != nil {
        withProgress!(uploadProgress)
      }
      
      print("%lld of %lld (%f)", uploadProgress.completedUnitCount, uploadProgress.totalUnitCount, uploadProgress.fractionCompleted);
      
    }, completionHandler: { (response, responseObject, error) -> Void in
      
      // Error
      if (error != nil) {
        
        // Print Response Body
        if let responseBody = (error! as NSError).userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey] as? Data {
          let responseBodyString = String(data: responseBody, encoding: String.Encoding.utf8)
          print("Error with response body: \(String(describing: responseBodyString))");
        }
        print(error!.localizedDescription);
        print("Error Response Object: \(String(describing: responseObject))");
        // print("Parameters: \(parameters)")
        
        if completionHandler != nil {
          completionHandler!(nil, error as NSError?)
        }
        
      } else {
        print("Success: \(response)")
        print("Response Object: \(String(describing: responseObject))")
        // print("Parameters: \(parameters)")
        
        let object: ResponseObject<User>?
        if let dictionary = responseObject as? Dictionary<String, AnyObject> {
          object = ResponseObject(dictionary: dictionary)
        } else {
          object = nil
        }
        
        if completionHandler != nil {
          completionHandler!(object, error as NSError?)
        }
      }
    })
    
    uploadTask.resume()
    
    return uploadTask
    
  }


}
