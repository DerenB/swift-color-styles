//
//  ColorsVC.swift
//  AppColorStyles
//
//  Created by Deren Bozer on 7/8/24.
//

import UIKit

class ColorsVC: UIViewController {
    
    /// Scroll Items
    let scrollView = UIScrollView()
    let stackView = UIStackView()
    
    /// Color Blocks
    let redBlock = UIView()
    let orangeBlock = UIView()
    let yellowBlock = UIView()
    let greenBlock = UIView()
    let mintBlock = UIView()
    let tealBlock = UIView()
    let cyanBlock = UIView()
    let blueBlock = UIView()
    let indigoBlock = UIView()
    let purpleBlock = UIView()
    let pinkBlock = UIView()
    let brownBlock = UIView()
    
    
    /// Tests
    let textTest = UITextField()

    
    /// View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGray
        
        createScrollFunction()
        createStackFunction()
        
        createColorBlocks()
    }
    
    
    /// Scrolling Function
    func createScrollFunction() {
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    
    /// Scroll Stack Function
    func createStackFunction() {
        scrollView.addSubview(stackView)
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }
    
    
    /// Function for Creating all of the color blocks
    func createColorBlocks() {
        createColorBlock(viewBlock: redBlock, bgColor: .systemRed, heightPin: 10)
        createColorBlock(viewBlock: orangeBlock, bgColor: .systemOrange, heightPin: 110)
        createColorBlock(viewBlock: yellowBlock, bgColor: .systemYellow, heightPin: 210)
        createColorBlock(viewBlock: greenBlock, bgColor: .systemGreen, heightPin: 310)
        createColorBlock(viewBlock: mintBlock, bgColor: .systemMint, heightPin: 410)
        createColorBlock(viewBlock: tealBlock, bgColor: .systemTeal, heightPin: 510)
        createColorBlock(viewBlock: cyanBlock, bgColor: .systemCyan, heightPin: 610)
        createColorBlock(viewBlock: blueBlock, bgColor: .systemBlue, heightPin: 710)
        createColorBlock(viewBlock: indigoBlock, bgColor: .systemIndigo, heightPin: 810)
        createColorBlock(viewBlock: purpleBlock, bgColor: .systemPurple, heightPin: 910)
        createColorBlock(viewBlock: pinkBlock, bgColor: .systemPink, heightPin: 1010)
        createColorBlock(viewBlock: brownBlock, bgColor: .systemBrown, heightPin: 1110)
    }
    
    
    /// Function for Creating a Color Block
    /// Paramters:
    ///     - View Variable : UIView
    ///     - Background Color : UIColor
    ///     - Y Anchor : CGFloat
    func createColorBlock(viewBlock: UIView, bgColor: UIColor, heightPin: CGFloat) {
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
    
    
    func configureText() {
        view.addSubview(textTest)
        textTest.translatesAutoresizingMaskIntoConstraints = false
        
        textTest.text = "Hello"
        textTest.textColor = .white
        
        NSLayoutConstraint.activate([
            textTest.widthAnchor.constraint(equalToConstant: 100),
            textTest.heightAnchor.constraint(equalToConstant: 100),
            textTest.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textTest.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10)
        ])
    }


}


#Preview {
    ColorsVC()
}
