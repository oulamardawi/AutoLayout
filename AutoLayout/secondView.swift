//
//  secondView.swift
//  AutoLayout
//
//  Created by Oula mardawi on 06/03/2022.
//

import Foundation
import UIKit

class secondView: UIViewController {
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
      }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let savedState = defaults.bool(forKey: "DarkModeOption")
        view.window?.overrideUserInterfaceStyle = savedState ? .light : .dark
     }


}
