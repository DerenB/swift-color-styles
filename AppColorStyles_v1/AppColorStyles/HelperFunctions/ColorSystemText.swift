//
//  ColorSystemText.swift
//  AppColorStyles
//
//  Created by Deren Bozer on 7/10/24.
//

import UIKit

class ColorSystemText {
    
    
    func createWhiteText(stackView: UIStackView, inTextField: UITextField, title: String, block: UIView) {
        stackView.addSubview(inTextField)
        inTextField.translatesAutoresizingMaskIntoConstraints = false
        
        inTextField.text = title
        inTextField.textColor = .white
        
        /// Removes the interaction
        inTextField.isUserInteractionEnabled = false
        
        NSLayoutConstraint.activate([
            inTextField.widthAnchor.constraint(equalToConstant: 200),
            inTextField.heightAnchor.constraint(equalToConstant: 100),
            inTextField.topAnchor.constraint(equalTo: block.topAnchor, constant: -30),
            inTextField.leadingAnchor.constraint(equalTo: block.leadingAnchor, constant: 5)
        ])
    }
    
    
    func createBlackText(stackView: UIStackView, inTextField: UITextField, title: String, block: UIView) {
        stackView.addSubview(inTextField)
        inTextField.translatesAutoresizingMaskIntoConstraints = false
        
        inTextField.text = title
        inTextField.textColor = .black
        
        /// Removes the interaction
        inTextField.isUserInteractionEnabled = false
        
        NSLayoutConstraint.activate([
            inTextField.widthAnchor.constraint(equalToConstant: 200),
            inTextField.heightAnchor.constraint(equalToConstant: 100),
            inTextField.topAnchor.constraint(equalTo: block.topAnchor, constant: 30),
            inTextField.leadingAnchor.constraint(equalTo: block.leadingAnchor, constant: 5)
        ])
    }
}
