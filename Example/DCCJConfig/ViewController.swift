//
//  ViewController.swift
//  DCCJConfig
//
//  Created by Ghstart on 07/28/2018.
//  Copyright (c) 2018 Ghstart. All rights reserved.
//

import UIKit
import DCCJConfig

class User: Codable {}

class UserLoader {
    func loadUser(withID id: Int) -> Future<User> {
        return Promise<User>()
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = UserLoader()
        user.loadUser(withID: 123).observe { (result) in
            
        }
    }


}

