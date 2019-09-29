//
//  ViewController.swift
//  pgl2
//
//  Created by Luiz Fernando França on 29/09/19.
//  Copyright © 2019 Luiz Fernando França. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let hello: UILabel = {
        let hello = UILabel()
        hello.text = "Hello"
        return hello
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(hello)
        
    }


}

