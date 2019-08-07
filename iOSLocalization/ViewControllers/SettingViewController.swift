//
//  SettingViewController.swift
//  iOSLocalization
//
//  Created by Tan Huynh on 7/25/19.
//  Copyright © 2019 Tan Huynh. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

  @IBOutlet weak var btnClickHere: UIButton!
  @IBOutlet weak var btnEnglish: UIButton!
  @IBOutlet weak var btnSpanish: UIButton!
  @IBOutlet weak var btnVietnamese: UIButton!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    setupUI()
  }

  private func setupUI() {
    
    btnEnglish.setTitle(Localizable.SettingPage.btnEnglishTitle.localized, for: .normal)
    btnSpanish.setTitle(Localizable.SettingPage.btnSpanishTitle.localized, for: .normal)
    btnVietnamese.setTitle(Localizable.SettingPage.btnVietnameTitle.localized, for: .normal)
    btnClickHere.setTitle(Localizable.SettingPage.btnClichHere.localized, for: .normal)
  }
  
  @IBAction func didTapEnglish(_ sender: Any) {
    Localizer().changeAppLanguage(.base)
    setupUI()
  }
  
  @IBAction func didTapSpanish(_ sender: Any) {
    Localizer().changeAppLanguage(.spanish)
    setupUI()
  }
  
  @IBAction func didTapVietnamese(_ sender: Any) {
    Localizer().changeAppLanguage(.vietnam)
    setupUI()
  }
  
}

