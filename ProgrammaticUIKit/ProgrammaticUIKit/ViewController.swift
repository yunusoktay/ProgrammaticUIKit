//
//  ViewController.swift
//  ProgrammaticUIKit
//
//  Created by Yunus Oktay on 28.01.2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("My Button", for: .normal)
        
        self.view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            button.heightAnchor.constraint(equalToConstant: 44),
            button.widthAnchor.constraint(equalToConstant: 120)
        ])
    }


}

