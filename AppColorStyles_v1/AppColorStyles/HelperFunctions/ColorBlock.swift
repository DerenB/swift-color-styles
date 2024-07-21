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
    func createColorBlock(viewBlock: UIView, stackView: UIStackView, bgColor: UIColor, heightPin: CGFloat, height: CGFloat) {
        /// Add View to Canvas
        stackView.addArrangedSubview(viewBlock)
        
        /// Center the View
        stackView.alignment = .center
        
        /// Remove auto layout
        viewBlock.translatesAutoresizingMaskIntoConstraints = false
        
        /// Set background color
        viewBlock.backgroundColor = bgColor
        
        /// Constraints
        NSLayoutConstraint.activate([
            viewBlock.topAnchor.constraint(equalTo: stackView.safeAreaLayoutGuide.topAnchor, constant: heightPin),
            viewBlock.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            viewBlock.heightAnchor.constraint(equalToConstant: height),
            // viewBlock.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            viewBlock.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.75)
        ])
    }
}
