//
//  Localizable.swift
//  iOSLocalization
//
//  Created by Tan Huynh on 7/25/19.
//  Copyright © 2019 Tan Huynh. All rights reserved.
//

enum Localizable {
  
  enum SettingPage: String, LocalizableDelegate {

    case btnEnglishTitle = "btnEnglishTitle"
    case btnSpanishTitle = "btnSpanishTitle"
    case btnVietnameTitle = "btnVietnameTitle"
    case btnClichHere = "btnClichHere"
  }
  
  enum WelcomePage: String, LocalizableDelegate {
    
    case title = "welcomeTitle"
    case btnBackTitle = "btnBackTitle"
  }
}
