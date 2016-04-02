//
//  TestViewControllerHandler.swift
//  SelectViewControllerWiki
//
//  Created by 矢野史洋 on 2016/04/02.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import Foundation
import UIKit

enum TestTableIndexType: Int{
    case ViewController = 0
    case ViewController2 = 1
    case ViewController3 = 2
    case ViewController4 = 3
    case ViewController5 = 4
}

class TestViewControllerHandler {
    var type: TestTableIndexType
    
    init(type: TestTableIndexType) {
        self.type = type
    }
    
    func getViewController() -> UIViewController {
        switch self.type {
        case .ViewController:
            let viewController = ViewController()
            return viewController
        case .ViewController2:
            let viewController2 = ViewController2()
            return viewController2
        case .ViewController3:
            let viewController3 = ViewController3()
            return viewController3
        case .ViewController4:
            let viewController4 = ViewController4()
            return viewController4
        case .ViewController5:
            let viewController5 = ViewController5()
            return viewController5
        }
        
    }
}