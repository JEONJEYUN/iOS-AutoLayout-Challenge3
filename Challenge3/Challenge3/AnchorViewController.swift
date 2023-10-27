//
//  AnchorViewController.swift
//  Challenge3
//
//  Created by 전제윤 on 10/27/23.
//

import UIKit

class AnchorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGreen
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = view.safeAreaLayoutGuide
        
        button.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16).isActive = true
        button.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16).isActive = true
        let safeBottomAnchor = button.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
        
        safeBottomAnchor.isActive = true
        safeBottomAnchor.priority = .defaultHigh //high는 750을 뜻한다
        // safeBottonAnchor.priority = .init(999)이렇게 숫자로 설정해줘도 된다.
        
        let viewBottomAnchor = button.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: -20)
        
        viewBottomAnchor.isActive = true
        
     
    }
}
