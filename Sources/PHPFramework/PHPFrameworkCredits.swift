/**
 _____    _    _   _____    ______                                           _
 |  __ \  | |  | | |  __ \  |  ____|                                         | |
 | |__) | | |__| | | |__) | | |__ _ __ __ _ _ __ ___   _____      _____  _ __| | __
 |  ___/  |  __  | |  ___/  |  __| '__/ _` | '_ ` _ \ / _ \ \ /\ / / _ \| '__| |/ /
 | |      | |  | | | |  _   | |  | | | (_| | | | | | |  __/\ V  V / (_) | |  |   <
 |_|      |_|  |_| |_| (_)  |_|  |_|  \__,_|_| |_| |_|\___| \_/\_/ \___/|_|  |_|\_\
 
 
 Copyright (c) 2016 Wesley de Groot (http://www.wesleydegroot.nl), WDGWV (http://www.wdgwv.com)
 
 
 Variable prefixes:
 PFS = PHP.Framework Shared
 PFT = PHP.Framework Tests (internal)
 PFI = PHP.Framework Internal
 PFU = PHP.Framework Unspecified
 
 usage:
 php.the_php_function(and, parameters, ofcourse)
 
 documentation:
 http://wdg.github.io/php.framework/
 
 wiki:
 https://github.com/wdg/php.framework/wiki
 
 questions/bugs:
 https://github.com/wdg/php.framework/issues
 
 ---------------------------------------------------
 File:    PHPFrameworkCredits.swift
 Created: 15-JAN-2016
 Creator: Wesley de Groot | g: @wdg | t: @wesdegroot
 Issue:   N/A
 Prefix:  PFS
 ---------------------------------------------------
 */

import Foundation

public let PFSnl: String = "\r\n"
public let PFSCredits: String = "\(PHPFramework(false).product) Version \(PHPFramework(false).version)" + PFSnl + PFSnl +
	"Created by:" + PFSnl +
	"Wesley de Groot (GitHub: @wdg Twitter: @wesdegroot) http://www.wdgwv.com" + PFSnl + PFSnl +
	"With help from:" + PFSnl +
	"name1" + PFSnl +
	PFSnl +
	"\r\nPHP.Framework did not exists without help of the above mentioned people,\r\nThanks for your support"
