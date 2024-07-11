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
    
    
    /// Color Text Function
    let colorText = ColorSystemText()
    
    /// Color Text
    let redWhiteText = UITextField()
    let orangeWhiteText = UITextField()
    let yellowWhiteText = UITextField()
    let greenWhiteText = UITextField()
    let mintWhiteText = UITextField()
    let tealWhiteText = UITextField()
    let cyanWhiteText = UITextField()
    let blueWhiteText = UITextField()
    let indigoWhiteText = UITextField()
    let purpleWhiteText = UITextField()
    let pinkWhiteText = UITextField()
    let brownWhiteText = UITextField()
    let redBlackText = UITextField()
    let orangeBlackText = UITextField()
    let yellowBlackText = UITextField()
    let greenBlackText = UITextField()
    let mintBlackText = UITextField()
    let tealBlackText = UITextField()
    let cyanBlackText = UITextField()
    let blueBlackText = UITextField()
    let indigoBlackText = UITextField()
    let purpleBlackText = UITextField()
    let pinkBlackText = UITextField()
    let brownBlackText = UITextField()

    
    /// System Colors Array
    let syColorStrings: [String] = [".systemRed",".systemOrange",".systemYellow",".systemGreen",".systemMint",".systemTeal",".systemCyan",".systemBlue",".systemIndigo",".systemPurple",".systemPink",".systemBrown",]
    let syColorUI: [UIColor] = [.systemRed, .systemOrange, .systemYellow, .systemGreen, .systemMint, .systemTeal, .systemCyan, .systemBlue, .systemIndigo, .systemPurple, .systemPink, .systemBrown]
    
    /// View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()

        /// Background Color
        view.backgroundColor = .black
        
        /// Add the ability to scroll the page
        scrollingAbility.addScrolling(viewInput: view, scrollViewInput: scrollView, stackViewInput: stackView)
        
        /// Adds the color blocks
        createBlocks()
        
        /// Add Color text
        createColorText()
    }
    
    
    /// Function for Creating all of the color blocks
    /// Calls the CreateColorBlock function
    func createBlocks() {
        colorBlock.createColorBlock(viewBlock: redBlock, stackView: stackView,bgColor: syColorUI[0], heightPin: 10)
        colorBlock.createColorBlock(viewBlock: orangeBlock, stackView: stackView,bgColor: syColorUI[1], heightPin: 110)
        colorBlock.createColorBlock(viewBlock: yellowBlock, stackView: stackView,bgColor: syColorUI[2], heightPin: 210)
        colorBlock.createColorBlock(viewBlock: greenBlock, stackView: stackView,bgColor: syColorUI[3], heightPin: 310)
        colorBlock.createColorBlock(viewBlock: mintBlock, stackView: stackView,bgColor: syColorUI[4], heightPin: 410)
        colorBlock.createColorBlock(viewBlock: tealBlock, stackView: stackView,bgColor: syColorUI[5], heightPin: 510)
        colorBlock.createColorBlock(viewBlock: cyanBlock, stackView: stackView,bgColor: syColorUI[6], heightPin: 610)
        colorBlock.createColorBlock(viewBlock: blueBlock, stackView: stackView,bgColor: syColorUI[7], heightPin: 710)
        colorBlock.createColorBlock(viewBlock: indigoBlock, stackView: stackView,bgColor: syColorUI[8], heightPin: 810)
        colorBlock.createColorBlock(viewBlock: purpleBlock, stackView: stackView,bgColor: syColorUI[9], heightPin: 910)
        colorBlock.createColorBlock(viewBlock: pinkBlock, stackView: stackView,bgColor: syColorUI[10], heightPin: 1010)
        colorBlock.createColorBlock(viewBlock: brownBlock, stackView: stackView,bgColor: syColorUI[11], heightPin: 1110)
    }

    
    func createColorText() {
        colorText.createWhiteText(stackView: stackView, inTextField: redWhiteText, title: ".systemRed", block: redBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: orangeWhiteText, title: ".systemOrange", block: orangeBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: yellowWhiteText, title: ".systemYellow", block: yellowBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: greenWhiteText, title: ".systemGreen", block: greenBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: mintWhiteText, title: ".systemMint", block: mintBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: tealWhiteText, title: ".systemTeal", block: tealBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: cyanWhiteText, title: ".systemCyan", block: cyanBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: blueWhiteText, title: ".systemBlue", block: blueBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: indigoWhiteText, title: ".systemIndigo", block: indigoBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: purpleWhiteText, title: ".systemPurple", block: purpleBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: pinkWhiteText, title: ".systemPink", block: pinkBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: brownWhiteText, title: ".systemBrown", block: brownBlock)
        colorText.createBlackText(stackView: stackView, inTextField: redBlackText, title: ".systemRed", block: redBlock)
        colorText.createBlackText(stackView: stackView, inTextField: orangeBlackText, title: ".systemOrange", block: orangeBlock)
        colorText.createBlackText(stackView: stackView, inTextField: yellowBlackText, title: ".systemYellow", block: yellowBlock)
        colorText.createBlackText(stackView: stackView, inTextField: greenBlackText, title: ".systemGreen", block: greenBlock)
        colorText.createBlackText(stackView: stackView, inTextField: mintBlackText, title: ".systemMint", block: mintBlock)
        colorText.createBlackText(stackView: stackView, inTextField: tealBlackText, title: ".systemTeal", block: tealBlock)
        colorText.createBlackText(stackView: stackView, inTextField: cyanBlackText, title: ".systemCyan", block: cyanBlock)
        colorText.createBlackText(stackView: stackView, inTextField: blueBlackText, title: ".systemBlue", block: blueBlock)
        colorText.createBlackText(stackView: stackView, inTextField: indigoBlackText, title: ".systemIndigo", block: indigoBlock)
        colorText.createBlackText(stackView: stackView, inTextField: purpleBlackText, title: ".systemPurple", block: purpleBlock)
        colorText.createBlackText(stackView: stackView, inTextField: pinkBlackText, title: ".systemPink", block: pinkBlock)
        colorText.createBlackText(stackView: stackView, inTextField: brownBlackText, title: ".systemBrown", block: brownBlock)
    }
}


#Preview {
    ColorsVC()
}
