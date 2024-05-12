//
//  TextFieldsTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Yusuf Burak on 12/05/2024.
//

import UIKit

class TextFieldsTutorialViewController: UIViewController {
    
    private var textField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Search..."
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.returnKeyType = .search
        return tf
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(textField)
        textField.delegate = self
        textField.addTarget(self, action: #selector(onEditingChanged), for: .editingChanged)
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
    }
    
    @objc func onEditingChanged(_ sender: UITextField) {
        print("User changed the textfield to: '\(sender.text)'")
    }

}

extension TextFieldsTutorialViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Return button tapped.")
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("User did start to edit text field.")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("User did end editing the text field.")
    }
}

#Preview {
    TextFieldsTutorialViewController()
}
