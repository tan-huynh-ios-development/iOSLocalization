//
//  WelcomeViewController.swift
//  iOSLocalization
//
//  Created by Tan Huynh on 8/6/19.
//  Copyright © 2019 Tan Huynh. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
  
  @IBOutlet weak var titleLbl: UILabel!
  @IBOutlet weak var btnBack: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupUI()
  }
  
  private func setupUI() {
    titleLbl.text = Localizable.WelcomePage.title.localized
    btnBack.setTitle(Localizable.WelcomePage.btnBackTitle.localized, for: .normal)
  }
  
  @IBAction func didTapBack(_ sender: Any) {
    self.dismiss(animated: true)
  }
}

