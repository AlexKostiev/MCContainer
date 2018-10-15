//
//  LocalReusableButtonView.swift
//  MCComponent
//
//  Created by Alexander Kostiev on 10/9/18.
//  Copyright © 2018 Alexander Kostiev. All rights reserved.
//

import UIKit

public class LocalReusableButtonView: UIView {
    @IBOutlet private weak var button: UIButton!
    
    public static func fromNib() -> LocalReusableButtonView? {
        let bundle = Bundle(for: LocalReusableButtonView.self)
        return (bundle.loadNibNamed("LocalReusableButtonView", owner: nil, options: nil) as? [LocalReusableButtonView])?.first

    }
    public var buttonTapHandler: ((LocalReusableButtonView) -> Void)?
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
