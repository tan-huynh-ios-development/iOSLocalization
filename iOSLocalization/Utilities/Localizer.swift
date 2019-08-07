//
//  SetLocalizer.swift
//  iOSLocalization
//
//  Created by Tan Huynh on 7/26/19.
//  Copyright © 2019 Tan Huynh. All rights reserved.
//

import Foundation

struct Localizer {
  
  // MARK: - Properties
  private let localizerAppLanguageKey = "tanhuynh.com.iOSLocalization.LocalizerAppLanguageKey"
  private let userDefault = UserDefaults.standard
  
  enum LanguageKey: String {
    case base = "Base"
    case spanish = "es"
    case vietnam = "vi"
    
    init(_ rawValue: String) {
      self = LanguageKey(rawValue: rawValue) ?? .base
    }
  }
  
  // MARK: - Methods
  func getBundleLanguage() -> Bundle {
    guard let languageSaved = userDefault.string(forKey: localizerAppLanguageKey),
      let path = Bundle.main.path(forResource: languageSaved, ofType: "lproj"),
      let bundle = Bundle(path: path) else {
      return .main
    }
    return bundle
  }
  
  func changeAppLanguage(_ languageKey: LanguageKey) {
    userDefault.set(languageKey.rawValue, forKey: localizerAppLanguageKey)
  }
}
