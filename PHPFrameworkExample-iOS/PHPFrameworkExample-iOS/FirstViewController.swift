//
//  FirstViewController.swift
//  PHPFrameworkExample-iOS
//
//  Created by Wesley de Groot on 15-01-16.
//  Copyright © 2016 WDGWV. All rights reserved.
//

import UIKit
import PHPFramework

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let returnVal = php.chr(64)
        print("\(returnVal)")
        
        let backtest = php.addslashes("Hi i\'m Wesley \"de\" Groot! \0!") // Want: Hi i\'m Wesley \"de\" Groot! \^@@! (Removed NULL byte, cousing Xcode to crash?!)
        print(backtest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

