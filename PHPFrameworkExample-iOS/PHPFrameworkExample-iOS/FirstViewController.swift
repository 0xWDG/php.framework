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
		
		let backtest = php.addslashes("Hi i\'m Wesley \"de\" Groot!") // Want: Hi i\'m Wesley \"de\" Groot!
		print(backtest)
		
		php.phpinfo()
		
	}
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
}

