//
//  ColorsVC.swift
//  AppColorStyles
//
//  Created by Deren Bozer on 7/8/24.
//

import UIKit

class ColorsVC: UIViewController {
    
    /// Scroll Items
    let scrollingAbility = ScrollingAbility()
    let scrollView = UIScrollView()
    let stackView = UIStackView()
    
    /// Color Block Function
    let colorBlock = ColorBlock()
    
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

        /// Background Color
        view.backgroundColor = .black
        
        /// Add the ability to scroll the page
        scrollingAbility.addScrolling(viewInput: view, scrollViewInput: scrollView, stackViewInput: stackView)
        
        /// Adds the color blocks
        createBlocks()
    }
    
    
    /// Function for Creating all of the color blocks
    /// Calls the CreateColorBlock function
    func createBlocks() {
        colorBlock.createColorBlock(viewBlock: redBlock, stackView: stackView,bgColor: .systemRed, heightPin: 10)
        colorBlock.createColorBlock(viewBlock: orangeBlock, stackView: stackView,bgColor: .systemOrange, heightPin: 110)
        colorBlock.createColorBlock(viewBlock: yellowBlock, stackView: stackView,bgColor: .systemYellow, heightPin: 210)
        colorBlock.createColorBlock(viewBlock: greenBlock, stackView: stackView,bgColor: .systemGreen, heightPin: 310)
        colorBlock.createColorBlock(viewBlock: mintBlock, stackView: stackView,bgColor: .systemMint, heightPin: 410)
        colorBlock.createColorBlock(viewBlock: tealBlock, stackView: stackView,bgColor: .systemTeal, heightPin: 510)
        colorBlock.createColorBlock(viewBlock: cyanBlock, stackView: stackView,bgColor: .systemCyan, heightPin: 610)
        colorBlock.createColorBlock(viewBlock: blueBlock, stackView: stackView,bgColor: .systemBlue, heightPin: 710)
        colorBlock.createColorBlock(viewBlock: indigoBlock, stackView: stackView,bgColor: .systemIndigo, heightPin: 810)
        colorBlock.createColorBlock(viewBlock: purpleBlock, stackView: stackView,bgColor: .systemPurple, heightPin: 910)
        colorBlock.createColorBlock(viewBlock: pinkBlock, stackView: stackView,bgColor: .systemPink, heightPin: 1010)
        colorBlock.createColorBlock(viewBlock: brownBlock, stackView: stackView,bgColor: .systemBrown, heightPin: 1110)
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
