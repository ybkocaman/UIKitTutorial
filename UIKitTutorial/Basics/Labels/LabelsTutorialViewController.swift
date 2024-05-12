//
//  LabelsTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Yusuf Burak on 11/05/2024.
//

import UIKit

class LabelsTutorialViewController: UIViewController {
    
    private var myFirstLabel = UILabel()
    
    private var mySecondLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome to the UIKit world!"
        label.textColor = .gray
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myFirstLabel.text = "Hello Yusuf!"
        myFirstLabel.font = UIFont.systemFont(ofSize: 20)
        
        view.addSubview(myFirstLabel)
        myFirstLabel.translatesAutoresizingMaskIntoConstraints = false
        myFirstLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        myFirstLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        
        view.addSubview(mySecondLabel)
        mySecondLabel.translatesAutoresizingMaskIntoConstraints = false
        mySecondLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        mySecondLabel.centerYAnchor.constraint(equalTo: myFirstLabel.bottomAnchor, constant: 10).isActive = true
        
    }


}

#Preview {
    LabelsTutorialViewController()
}
