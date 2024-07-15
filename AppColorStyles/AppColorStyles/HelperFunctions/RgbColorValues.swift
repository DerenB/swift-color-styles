//
//  RgbColorValues.swift
//  AppColorStyles
//
//  Created by Deren Bozer on 7/11/24.
//


import UIKit


class RgbColorValues {
    
    
    func addRedValue(stackView: UIStackView, colorBlock: UIView, inputField: UITextField, intVal: Int) {
        stackView.addSubview(inputField)
        inputField.translatesAutoresizingMaskIntoConstraints = false
        
        inputField.text = "R: \(intVal)"
        inputField.textColor = .black
        
        /// Removes the interaction
        inputField.isUserInteractionEnabled = false
        
        NSLayoutConstraint.activate([
            inputField.widthAnchor.constraint(equalToConstant: 65),
            inputField.heightAnchor.constraint(equalToConstant: 100),
            inputField.topAnchor.constraint(equalTo: colorBlock.topAnchor, constant: -30),
            inputField.trailingAnchor.constraint(equalTo: colorBlock.trailingAnchor, constant: 0)
        ])
    }
    
    
    func addGreenValue(stackView: UIStackView, colorBlock: UIView, inputField: UITextField, intVal: Int) {
        stackView.addSubview(inputField)
        inputField.translatesAutoresizingMaskIntoConstraints = false
        
        inputField.text = "G: \(intVal)"
        inputField.textColor = .black
        
        /// Removes the interaction
        inputField.isUserInteractionEnabled = false
        
        NSLayoutConstraint.activate([
            inputField.widthAnchor.constraint(equalToConstant: 65),
            inputField.heightAnchor.constraint(equalToConstant: 100),
            inputField.topAnchor.constraint(equalTo: colorBlock.topAnchor, constant: 0),
            inputField.trailingAnchor.constraint(equalTo: colorBlock.trailingAnchor, constant: 0)
        ])
    }
    
    
    func addBlueValue(stackView: UIStackView, colorBlock: UIView, inputField: UITextField, intVal: Int) {
        stackView.addSubview(inputField)
        inputField.translatesAutoresizingMaskIntoConstraints = false
        
        inputField.text = "B: \(intVal)"
        inputField.textColor = .black
        
        /// Removes the interaction
        inputField.isUserInteractionEnabled = false
        
        NSLayoutConstraint.activate([
            inputField.widthAnchor.constraint(equalToConstant: 65),
            inputField.heightAnchor.constraint(equalToConstant: 100),
            inputField.topAnchor.constraint(equalTo: colorBlock.topAnchor, constant: 30),
            inputField.trailingAnchor.constraint(equalTo: colorBlock.trailingAnchor, constant: 0)
        ])
    }
    
    
}

