//
//  LoginViewController.swift
//  Challenge3
//
//  Created by 전제윤 on 10/27/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(adjustButtonDynamicType), name: UIContentSizeCategory.didChangeNotification, object: nil)

        
    }
    
    @objc func adjustButtonDynamicType() {
        buttons.forEach { (button) in
            button.titleLabel?.adjustsFontForContentSizeCategory = true}
    }

}
