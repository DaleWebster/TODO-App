//
//  UIView+AutoLayout.swift
//  TodoApp
//
//  Created by Sam Ali on 09/03/2022.
//

import UIKit

extension UIView {
    // MARK: Public methods
    func embedView(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        addEmbedConstraints(view: view)
    }
    
    func embedView(_ view: UIView, aboveSubview siblingSubview: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        insertSubview(view, aboveSubview: siblingSubview)
        addEmbedConstraints(view: view)
    }
    
    // MARK: Private methods
    private func addEmbedConstraints(view: UIView) {
        let constraints = [view.leadingAnchor.constraint(equalTo: leadingAnchor),
                           view.trailingAnchor.constraint(equalTo: trailingAnchor),
                           view.topAnchor.constraint(equalTo: topAnchor),
                           view.bottomAnchor.constraint(equalTo: bottomAnchor)]
        
        NSLayoutConstraint.activate(constraints)
    }
}
