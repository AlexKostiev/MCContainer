//
//  ReusableButtonView.swift
//  MCComponent
//
//  Created by Alexander Kostiev on 10/9/18.
//  Copyright © 2018 Alexander Kostiev. All rights reserved.
//

import UIKit

public class ReusableButtonView: UIView {
    @IBOutlet private weak var button: UIButton!
    
    
    public static func fromNib() -> ReusableButtonView? {
        let bundle = Bundle(for: ReusableButtonView.self)
        return (bundle.loadNibNamed("ReusableButtonView", owner: nil, options: nil) as? [ReusableButtonView])?.first

    }
    public var buttonTapHandler: ((ReusableButtonView) -> Void)?
    public var buttonTitle: String {
        get {
            return button.title(for: .normal) ?? ""
        }
        set {
            button.setTitle(buttonTitle, for: .normal)
        }
    }
    
    @IBAction private func onButtonTapped(_ sender: Any) {
        buttonTapHandler?(self)
    }
}
