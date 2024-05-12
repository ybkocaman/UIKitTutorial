//
//  ButtonsTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Yusuf Burak on 11/05/2024.
//

import UIKit

class ButtonsTutorialViewController: UIViewController {
    
    private lazy var showNameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show Name", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(onShowNameTapped), for: .touchUpInside)
        return button
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hi there! My name is Yusuf"
        label.backgroundColor = .green
        label.isHidden = true
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(showNameButton)
        showNameButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        showNameButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        showNameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        showNameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        
        view.addSubview(nameLabel)
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: showNameButton.topAnchor, constant: -50).isActive = true
        
    }
    
    @objc func onShowNameTapped() {
        nameLabel.isHidden.toggle()
        let title = nameLabel.isHidden ? "Show Name" : "Hide Name"
        showNameButton.setTitle(title, for: .normal)
    }

}

#Preview {
    ButtonsTutorialViewController()
}
