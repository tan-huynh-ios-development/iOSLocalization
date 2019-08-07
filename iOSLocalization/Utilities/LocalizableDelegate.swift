//
//  LocalizableDelegate.swift
//  iOSLocalization
//
//  Created by Tan Huynh on 7/25/19.
//  Copyright © 2019 Tan Huynh. All rights reserved.
//

import Foundation

protocol LocalizableDelegate {
  
  var rawValue: String { get }
  var table: String? { get }
  var localized: String { get }
}

extension LocalizableDelegate {
  
  /// returns a localized value by specified key located in the specified table
  var localized: String {
    return Localizer().getBundleLanguage().localizedString(forKey: rawValue, value: rawValue, table: table)
  }
  
  /// file name, where to find the localized key
  /// by default is the Localizable.string table
  var table: String? {
    return nil
  }
}
