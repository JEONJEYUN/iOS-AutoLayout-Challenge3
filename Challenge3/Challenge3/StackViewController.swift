//
//  StackViewController.swift
//  Challenge3
//
//  Created by 전제윤 on 10/27/23.
//

import UIKit

class StackViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vertical = UIStackView()
        vertical.axis = .vertical
        vertical.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(vertical)
        
        let horizontal = UIStackView()
        horizontal.axis = .horizontal
        horizontal.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(horizontal)
        
        let addButton = UIButton()
        addButton.setTitle("Add", for: .normal)
        addButton.setTitleColor(.blue, for: .normal)
        
        let removeButton = UIButton()
        removeButton.setTitle("Remove", for: .normal)
        removeButton.setTitleColor(.blue, for: .normal)
        
        horizontal.addArrangedSubview(addButton)
        horizontal.addArrangedSubview(removeButton)
        
        horizontal.distribution = .fillEqually
        
        horizontal.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        horizontal.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        horizontal.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        vertical.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        vertical.bottomAnchor.constraint(equalTo: horizontal.topAnchor).isActive = true
        vertical.leadingAnchor.constraint(equalTo: horizontal.leadingAnchor).isActive = true
        vertical.trailingAnchor.constraint(equalTo: horizontal.trailingAnchor).isActive = true
        
        
    }
    
}
