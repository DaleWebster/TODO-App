//
//  UIViewController+Children.swift
//  TodoApp
//
//  Created by Sam Ali on 10/03/2022.
//


import Foundation
import UIKit
//
//extension UIViewController {
//    func embedChildViewController(_ childViewController: UIViewController, in containerView: UIView) {
//        assert(childViewController.parent == nil, "Child view controller already has a parent")
//
//        addChild(childViewController)
//
//        containerView.embedView(childViewController.view)
//
//        childViewController.didMove(toParent: self)
//    }
//
//    func unembedChildViewController(_ childViewController: UIViewController) {
//        assert(childViewController.parent == self, "Unable to remove child view controller that is not //currently a child")
//
//        childViewController.unembedSelf()
//    }
//
//    func unembedSelf() {
//        self.willMove(toParent: nil)
//        self.view.removeFromSuperview()
//        self.removeFromParent()
//    }
//
//    func embedChildViewController(_ childViewController: UIViewController, in stackView: UIStackView, at //index: Int? = nil) {
//        assert(childViewController.parent == nil, "Child view controller already has a parent")
//
//        addChild(childViewController)
//
//        if let index = index {
//            stackView.insertArrangedSubview(childViewController.view, at: index)
//        } else {
//            stackView.addArrangedSubview(childViewController.view)
//        }
//
//        childViewController.didMove(toParent: self)
//    }
//}
//
//extension UIView {
//    // MARK: Public methods
//    func embedView(_ view: UIView) {
//        view.translatesAutoresizingMaskIntoConstraints = false
//        addSubview(view)
//        addEmbedConstraints(view: view)
//    }
//
//    func embedView(_ view: UIView, aboveSubview siblingSubview: UIView) {
//        view.translatesAutoresizingMaskIntoConstraints = false
//        addSubview(view)
//        insertSubview(view, aboveSubview: siblingSubview)
//        addEmbedConstraints(view: view)
//    }
//
//    // MARK: Private methods
//    private func addEmbedConstraints(view: UIView) {
//        let constraints = [view.leadingAnchor.constraint(equalTo: leadingAnchor),
//                           view.trailingAnchor.constraint(equalTo: trailingAnchor),
//                           view.topAnchor.constraint(equalTo: topAnchor),
//                           view.bottomAnchor.constraint(equalTo: bottomAnchor)]
//
//        NSLayoutConstraint.activate(constraints)
//    }
//}
//
