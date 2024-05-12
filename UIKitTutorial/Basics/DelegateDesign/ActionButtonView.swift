//
//  ActionButtonView.swift
//  UIKitTutorial
//
//  Created by Yusuf Burak on 12/05/2024.
//

import UIKit

protocol ActionButtonViewDelegate: AnyObject {
    func onPrimaryTap()
    func onSecondaryTap()
}

class ActionButtonView: UIView {
    
    weak var delegate: ActionButtonViewDelegate?
    
    private var primaryActionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Primary Action", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var secondaryActionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Secondary Action", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemBackground
        layer.cornerRadius = 16
        
        addSubview(primaryActionButton)
        primaryActionButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        primaryActionButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        primaryActionButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        primaryActionButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        primaryActionButton.layer.cornerRadius = 16
        
        addSubview(secondaryActionButton)
        secondaryActionButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        secondaryActionButton.topAnchor.constraint(equalTo: primaryActionButton.bottomAnchor, constant: 16).isActive = true
        
        primaryActionButton.addTarget(self, action: #selector(handlePrimaryButtonTap), for: .touchUpInside)
        secondaryActionButton.addTarget(self, action: #selector(handleSecondaryButtonTap), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func handlePrimaryButtonTap() {
        print("Primary action button tapped in view.")
        delegate?.onPrimaryTap()
    }
    
    @objc func handleSecondaryButtonTap() {
        print("Secondary button tapped in view.")
        delegate?.onSecondaryTap()
    }
    
}


