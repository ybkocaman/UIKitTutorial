//
//  ScrollViewsTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Yusuf Burak on 12/05/2024.
//

import UIKit

class ScrollViewsTutorialViewController: UIViewController {
    
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    private var scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    private let rectHeight: CGFloat = 200
    private let numberOfRects = 20

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray2
        
        for _ in 1..<numberOfRects {
            let rect = createRect()
            stackView.addArrangedSubview(rect)
        }
        
        scrollView.delegate = self
        
        view.addSubview(scrollView)
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        scrollView.contentSize.height = (CGFloat(numberOfRects) * rectHeight) + 64
        
        scrollView.addSubview(stackView)
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

    }

    private func createRect() -> UIView {
        let rect = UIView()
        rect.heightAnchor.constraint(equalToConstant: rectHeight).isActive = true
        rect.widthAnchor.constraint(equalToConstant: rectHeight).isActive = true
        rect.backgroundColor = .systemCyan
        rect.layer.cornerRadius = 16
        return rect
    }

}

extension ScrollViewsTutorialViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("ScrollView offset: \(scrollView.contentOffset)")
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("User is beginning to drag")
    }
    
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        print("Scroll view is about to sart deceleareting")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("Scroll view did end decelerating")
    }
}

#Preview {
    ScrollViewsTutorialViewController()
}
