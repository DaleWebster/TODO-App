//
//  uiViewController+ChildrenExtension.swift
//  TodoApp
//
//  Created by Sam Ali on 09/03/2022.
//

import UIKit


extension UIViewController {
    func embedChildViewController(_ childViewController: UIViewController, in containerView: UIView) {
        assert(childViewController.parent == nil, "Child view controller already has a parent")
        
        addChild(childViewController)

        containerView.embedView(childViewController.view)
        
        childViewController.didMove(toParent: self)
    }
    
    func unembedChildViewController(_ childViewController: UIViewController) {
        assert(childViewController.parent == self, "Unable to remove child view controller that is not currently a child")
        
        childViewController.unembedSelf()
    }
    
    func unembedSelf() {
        self.willMove(toParent: nil)
        self.view.removeFromSuperview()
        self.removeFromParent()
    }
    
    func embedChildViewController(_ childViewController: UIViewController, in stackView: UIStackView, at index: Int? = nil) {
        assert(childViewController.parent == nil, "Child view controller already has a parent")
        
        addChild(childViewController)
        
        if let index = index {
            stackView.insertArrangedSubview(childViewController.view, at: index)
        } else {
            stackView.addArrangedSubview(childViewController.view)
        }

        childViewController.didMove(toParent: self)
    }
}
