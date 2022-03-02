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
    var state: Bool?

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

        if sender.isOn {
            //view.backgroundColor = .black
            state = true
            view.window?.overrideUserInterfaceStyle = .light
        }else {
          //  view.backgroundColor = .white
            state = false
            view.window?.overrideUserInterfaceStyle = .dark
        }
        
        defaults.set(state, forKey: "DarkModeOption")
        
    }
    
   


}

