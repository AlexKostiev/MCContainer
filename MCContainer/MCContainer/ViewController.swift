//
//  ViewController.swift
//  MCContainer
//
//  Created by Alexander Kostiev on 10/9/18.
//  Copyright © 2018 Alexander Kostiev. All rights reserved.
//

import UIKit
import MCComponent
import MCLocalComponent

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let reusableButtonView = ReusableButtonView.fromNib() else { return }
        reusableButtonView.backgroundColor = .green
        stackView.addArrangedSubview(reusableButtonView)
        
        reusableButtonView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        reusableButtonView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        reusableButtonView.buttonTapHandler = { _ in
            print("button was tapped!")
        }
        
        guard let localReusableButtonView = LocalReusableButtonView.fromNib() else { return }
        localReusableButtonView.backgroundColor = .yellow
        stackView.addArrangedSubview(localReusableButtonView)
        
        localReusableButtonView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        localReusableButtonView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        localReusableButtonView.buttonTapHandler = { _ in
            print("button for local component was tapped!")
        }
    }
}

