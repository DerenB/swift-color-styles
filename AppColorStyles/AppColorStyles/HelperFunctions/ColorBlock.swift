//
//  ColorBlock.swift
//  AppColorStyles
//
//  Created by Deren Bozer on 7/9/24.
//

import UIKit

class ColorBlock {
    /// Function for Creating a Color Block
    /// Paramters:
    ///     - View Variable : UIView
    ///     - Background Color : UIColor
    ///     - Y Anchor : CGFloat
    func createColorBlock(viewBlock: UIView, stackView: UIStackView, bgColor: UIColor, heightPin: CGFloat) {
        /// Add View to Canvas
        stackView.addArrangedSubview(viewBlock)
        
        /// Remove auto layout
        viewBlock.translatesAutoresizingMaskIntoConstraints = false
        
        /// Set background color
        viewBlock.backgroundColor = bgColor
        
        /// Constraints
        NSLayoutConstraint.activate([
            viewBlock.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            viewBlock.heightAnchor.constraint(equalToConstant: 100),
            viewBlock.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            viewBlock.topAnchor.constraint(equalTo: stackView.safeAreaLayoutGuide.topAnchor, constant: heightPin)
        ])
    }
}
