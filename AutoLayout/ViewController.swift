//
//  ViewController.swift
//  AutoLayout
//
//  Created by Oula mardawi on 01/03/2022.
//

import UIKit

class ViewController: UIViewController {

  
    
    
  
    @IBOutlet var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func switchDidChange(_ sender: UISwitch){
        if sender.isOn{
            //view.backgroundColor = .black
            view.window?.overrideUserInterfaceStyle = .dark

        }
          
        else{
          //  view.backgroundColor = .white
            view.window?.overrideUserInterfaceStyle = .light
        }
    }
    


}

