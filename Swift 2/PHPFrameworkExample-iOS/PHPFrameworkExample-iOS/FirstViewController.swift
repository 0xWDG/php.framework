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
        
        let myStr = "Hi This is my super long string, filled with some random content, just for, and just to test the PHP-Function word-wrap in swift, if it is working then it will be super cool, and i'll be happy then, for now i'm typing to much of things i'd preffer not to do, like typing strings like this just for testing purposes. but untested, and undocumented, doesn't exists."
        php.noop(myStr)
        
        php._Test(php.getcwd(), php.getcwd()) // Will never fail. // Non-constant function.

        print(php.scandir("\(php.getcwd())/../")) // parent ;)
        
        //print(php.serialize(["h","e","l","l","o","!"]))
        
	}
    
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
}

