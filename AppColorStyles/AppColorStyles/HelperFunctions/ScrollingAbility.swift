//
//  ScrollingAbility.swift
//  AppColorStyles
//
//  Created by Deren Bozer on 7/9/24.
//

import UIKit

class ScrollingAbility {
    
    func addScrolling(viewInput: UIView, scrollViewInput: UIScrollView, stackViewInput: UIStackView) {
        createScrollFunction(view: viewInput, scrollView: scrollViewInput)
        createStackFunction(scrollView: scrollViewInput, stackView: stackViewInput)
    }
    
    
    /// Scrolling Function
    func createScrollFunction(view: UIView, scrollView: UIScrollView) {
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            // scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.size.width * 0.125),
            // scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.frame.size.width * 0.125)
        ])
    }
    
    
    /// Scroll Stack Function
    func createStackFunction(scrollView: UIScrollView, stackView: UIStackView) {
        scrollView.addSubview(stackView)
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            // stackView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            // stackView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: scrollView.frame.size.width * 0.125),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -scrollView.frame.size.width * 0.125)
        ])
    }
}
