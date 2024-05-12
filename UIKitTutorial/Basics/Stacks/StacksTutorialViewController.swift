//
//  StacksTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Yusuf Burak on 12/05/2024.
//

import UIKit

class StacksTutorialViewController: UIViewController {
    
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 20
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rectangle1 = createRectangle()
        rectangle1.backgroundColor = .systemCyan
        
        let rectangle2 = createRectangle()
        rectangle2.backgroundColor = .systemPink
        
        let rectangle3 = createRectangle()
        rectangle3.backgroundColor = .systemMint
        
        stackView.addArrangedSubview(rectangle1)
        stackView.addArrangedSubview(rectangle2)
        stackView.addArrangedSubview(rectangle3)
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
     
    private func createRectangle() -> UIView {
        let rectangle = UIView()
        rectangle.layer.cornerRadius = 16
        rectangle.widthAnchor.constraint(equalToConstant: 300).isActive = true
        rectangle.heightAnchor.constraint(equalToConstant: 150).isActive = true
        return rectangle
    }

}

#Preview {
    StacksTutorialViewController()
}
