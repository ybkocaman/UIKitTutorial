//
//  ShapesTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Yusuf Burak on 12/05/2024.
//

import UIKit

class ShapesTutorialViewController: UIViewController {
    
    private var rectangle: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var circle: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemRed
        view.layer.cornerRadius = 50
        return view
    }()
    
    private var imageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.tintColor = .systemCyan
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(rectangle)
        rectangle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rectangle.topAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        rectangle.widthAnchor.constraint(equalToConstant: 100).isActive = true
        rectangle.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        view.addSubview(circle)
        circle.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        circle.centerYAnchor.constraint(equalTo: rectangle.bottomAnchor, constant: 100).isActive = true
        circle.widthAnchor.constraint(equalToConstant: 100).isActive = true
        circle.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        view.addSubview(imageView)
        imageView.image = UIImage(systemName: "paperplane")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: rectangle.topAnchor, constant: -100).isActive = true
        
    }

}

#Preview {
    ShapesTutorialViewController()
}
