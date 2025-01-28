//
//  ViewController.swift
//  ProgrammaticUIKit
//
//  Created by Yunus Oktay on 28.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("My Button", for: .normal)
        button.backgroundColor = .systemBlue
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 44),
            button.widthAnchor.constraint(equalToConstant: 120)
        ])
        
        button.addTarget(self, action: #selector(didTopButton), for: .touchUpInside)
    }
    
    @objc func didTopButton() {
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

