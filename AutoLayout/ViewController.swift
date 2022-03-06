//
//  ViewController.swift
//  AutoLayout
//
//  Created by Oula mardawi on 01/03/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mySwitch: UISwitch!
    
    let defaults = UserDefaults.standard
  

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let savedState = defaults.bool(forKey: "DarkModeOption")
        view.window?.overrideUserInterfaceStyle = savedState ? .light : .dark
        mySwitch.setOn(savedState, animated: true)
    }
    
    
    @IBAction func switchDidChange(_ sender: UISwitch){
        view.window?.overrideUserInterfaceStyle = sender.isOn ? .light : .dark
       defaults.set(sender.isOn, forKey: "DarkModeOption")
        
    }
    
   


}

