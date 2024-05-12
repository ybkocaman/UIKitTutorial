//
//  DelegateDesignTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Yusuf Burak on 12/05/2024.
//

import UIKit

class DelegateDesignTutorialViewController: UIViewController {
        
    private var actionButtonView = ActionButtonView()
    
    private var textLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGroupedBackground
                
        view.addSubview(actionButtonView)
        actionButtonView.translatesAutoresizingMaskIntoConstraints = false
        actionButtonView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        actionButtonView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        actionButtonView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        actionButtonView.delegate = self
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: actionButtonView.bottomAnchor, constant: 16).isActive = true

        textLabel.text = "Primary button tapped."
        textLabel.isHidden = true

    }

}

extension DelegateDesignTutorialViewController: ActionButtonViewDelegate {
    
    func onPrimaryTap() {
        print("Primary action button tapped in view controller.")
        textLabel.isHidden = false
    }
    
    func onSecondaryTap() {
        print("Secondary action button tapped in view controller.")
        textLabel.isHidden = true
    }
    
}

#Preview {
    DelegateDesignTutorialViewController()
}
