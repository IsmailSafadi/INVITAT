//
//  StringOperations.swift
//  SwiftTemplate
//
//  Created by Ismail Safadi on 7/24/17.
//  Copyright © 2017 YM. All rights reserved.
//

import UIKit


extension String{
  
  var localized: String {
    return NSLocalizedString(self, tableName: "Localizable", bundle: Bundle.main, value: "", comment: "")
  }
	
   func trim()-> String {
    return splitAndJoin(seprator:"")
  }

  func removeSpaces()-> String {
    return splitAndJoin(seprator:" ")    
  }

  func isEmptyString() -> Bool {
    return self.removeSpaces().characters.count == 0
  }
  
  func split(_ separator: Character) -> [String] {
    return characters.split{$0 == separator}.map(String.init)
  }

  func splitAndJoin(seprator : String) -> String {
    let componentsArray = self.characters.split(separator: " ").map(String.init)
    let componentsMutableArray = NSMutableArray(array: componentsArray)
    componentsMutableArray.remove("")
   return componentsMutableArray .componentsJoined(by: seprator)
  }

  
   func MD5() -> Data {
    let messageData = self.data(using:.utf8)!
    var digestData = Data(count: Int(CC_MD5_DIGEST_LENGTH))
    
    _ = digestData.withUnsafeMutableBytes {digestBytes in
      messageData.withUnsafeBytes {messageBytes in
        CC_MD5(messageBytes, CC_LONG(messageData.count), digestBytes)
      }
    }
    
    return digestData
  }
  
  /**
   Returns the langauge of a String
   
   NOTE: String has to be at least 4 characters, otherwise the method will return nil.
   
   - returns: String! Returns a string representing the langague of the string (e.g. en, fr, or und for undefined).
   */
  func detectLanguage() -> String? {
    if self.characters.count > 4 {
      let tagger = NSLinguisticTagger(tagSchemes:[NSLinguisticTagSchemeLanguage], options: 0)
      tagger.string = self
      return tagger.tag(at: 0, scheme: NSLinguisticTagSchemeLanguage, tokenRange: nil, sentenceRange: nil)
    }
    return nil
  }

}
