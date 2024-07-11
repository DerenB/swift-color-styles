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
    
    /// Color UIView Blocks
    let redBlock = UIView(), orangeBlock = UIView(), yellowBlock = UIView(), greenBlock = UIView(), mintBlock = UIView(), tealBlock = UIView(), cyanBlock = UIView(), blueBlock = UIView(), indigoBlock = UIView(), purpleBlock = UIView(), pinkBlock = UIView(), brownBlock = UIView(), spacerBlock = UIView(), gray1Block = UIView(), gray2Block = UIView(), gray3Block = UIView(), gray4Block = UIView(), gray5Block = UIView(), gray6Block = UIView()

    
    /// Color Text Function
    let colorText = ColorSystemText()
    
    /// Color UI Text Fields
    let redWhiteText = UITextField(), orangeWhiteText = UITextField(), yellowWhiteText = UITextField(), greenWhiteText = UITextField(), mintWhiteText = UITextField(), tealWhiteText = UITextField(), cyanWhiteText = UITextField(), blueWhiteText = UITextField(), indigoWhiteText = UITextField(), purpleWhiteText = UITextField(), pinkWhiteText = UITextField(), brownWhiteText = UITextField(), gray1WhiteText = UITextField(), gray2WhiteText = UITextField(), gray3WhiteText = UITextField(), gray4WhiteText = UITextField(), gray5WhiteText = UITextField(), gray6WhiteText = UITextField(), redBlackText = UITextField(), orangeBlackText = UITextField(), yellowBlackText = UITextField(), greenBlackText = UITextField(), mintBlackText = UITextField(), tealBlackText = UITextField(), cyanBlackText = UITextField(), blueBlackText = UITextField(), indigoBlackText = UITextField(), purpleBlackText = UITextField(), pinkBlackText = UITextField(), brownBlackText = UITextField(), gray1BlackText = UITextField(), gray2BlackText = UITextField(), gray3BlackText = UITextField(), gray4BlackText = UITextField(), gray5BlackText = UITextField(), gray6BlackText = UITextField()

    
    /// System Colors Array
    let syColorStrings: [String] = [".systemRed",".systemOrange",".systemYellow",".systemGreen",".systemMint",".systemTeal",".systemCyan",".systemBlue",".systemIndigo",".systemPurple",".systemPink",".systemBrown", ".systemGray", ".systemGray2", ".systemGray3", ".systemGray4", ".systemGray5", ".systemGray6"]
    var syColorsLight: [UIColor] = []
    let c: [CGFloat] = [
        255, 59, 48,
        255, 149, 0,
        255, 204, 0,
        52, 199, 89,
        0, 199, 190,
        48, 176, 199,
        50, 173, 230,
        0, 122, 255,
        88, 86, 214,
        175, 82, 222,
        255, 45, 85,
        162, 132, 94,
        0,0,0,
        142, 142, 147,
        174, 174, 178,
        199, 199, 204,
        209, 209, 214,
        229, 229, 234,
        242, 242, 247
    ]
    
    
    /// View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Add the RGB values to the UIColor Array
        createArraysOfValues()

        /// Background Color
        view.backgroundColor = .black
        
        /// Add the ability to scroll the page
        scrollingAbility.addScrolling(viewInput: view, scrollViewInput: scrollView, stackViewInput: stackView)
        
        /// Adds the color blocks
        createBlocks()
        
        /// Add Color text
        createColorText()
    }
    
    
    func createArraysOfValues() {
        
        syColorsLight.append(contentsOf: [
            colorConvert(red: c[0], green: c[1], blue: c[2]),
            colorConvert(red: c[3], green: c[4], blue: c[5]),
            colorConvert(red: c[6], green: c[7], blue: c[8]),
            colorConvert(red: c[9], green: c[10], blue: c[11]),
            colorConvert(red: c[12], green: c[13], blue: c[14]),
            colorConvert(red: c[15], green: c[16], blue: c[17]),
            colorConvert(red: c[18], green: c[19], blue: c[20]),
            colorConvert(red: c[21], green: c[22], blue: c[23]),
            colorConvert(red: c[24], green: c[25], blue: c[26]),
            colorConvert(red: c[27], green: c[28], blue: c[29]),
            colorConvert(red: c[30], green: c[31], blue: c[32]),
            colorConvert(red: c[33], green: c[34], blue: c[35]),
            colorConvert(red: c[36], green: c[37], blue: c[38]),
            colorConvert(red: c[39], green: c[40], blue: c[41]),
            colorConvert(red: c[42], green: c[43], blue: c[44]),
            colorConvert(red: c[45], green: c[46], blue: c[47]),
            colorConvert(red: c[48], green: c[49], blue: c[50]),
            colorConvert(red: c[51], green: c[52], blue: c[53]),
            colorConvert(red: c[54], green: c[55], blue: c[56]),
        ])
    }
    
    
    /// Function for converting RGB colors to UIColor
    func colorConvert(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1.0)
    }
    
    
    /// Function for Creating all of the color blocks
    /// Calls the CreateColorBlock function
    func createBlocks() {
        colorBlock.createColorBlock(viewBlock: redBlock, stackView: stackView,bgColor: syColorsLight[0], heightPin: 10, height: 100)
        colorBlock.createColorBlock(viewBlock: orangeBlock, stackView: stackView,bgColor: syColorsLight[1], heightPin: 110, height: 100)
        colorBlock.createColorBlock(viewBlock: yellowBlock, stackView: stackView,bgColor: syColorsLight[2], heightPin: 210, height: 100)
        colorBlock.createColorBlock(viewBlock: greenBlock, stackView: stackView,bgColor: syColorsLight[3], heightPin: 310, height: 100)
        colorBlock.createColorBlock(viewBlock: mintBlock, stackView: stackView,bgColor: syColorsLight[4], heightPin: 410, height: 100)
        colorBlock.createColorBlock(viewBlock: tealBlock, stackView: stackView,bgColor: syColorsLight[5], heightPin: 510, height: 100)
        colorBlock.createColorBlock(viewBlock: cyanBlock, stackView: stackView,bgColor: syColorsLight[6], heightPin: 610, height: 100)
        colorBlock.createColorBlock(viewBlock: blueBlock, stackView: stackView,bgColor: syColorsLight[7], heightPin: 710, height: 100)
        colorBlock.createColorBlock(viewBlock: indigoBlock, stackView: stackView,bgColor: syColorsLight[8], heightPin: 810, height: 100)
        colorBlock.createColorBlock(viewBlock: purpleBlock, stackView: stackView,bgColor: syColorsLight[9], heightPin: 910, height: 100)
        colorBlock.createColorBlock(viewBlock: pinkBlock, stackView: stackView,bgColor: syColorsLight[10], heightPin: 1010, height: 100)
        colorBlock.createColorBlock(viewBlock: brownBlock, stackView: stackView,bgColor: syColorsLight[11], heightPin: 1110, height: 100)
        colorBlock.createColorBlock(viewBlock: spacerBlock, stackView: stackView, bgColor: syColorsLight[12], heightPin: 1210, height: 25)
        colorBlock.createColorBlock(viewBlock: gray1Block, stackView: stackView, bgColor: syColorsLight[13], heightPin: 1235, height: 100)
        colorBlock.createColorBlock(viewBlock: gray2Block, stackView: stackView, bgColor: syColorsLight[14], heightPin: 1335, height: 100)
        colorBlock.createColorBlock(viewBlock: gray3Block, stackView: stackView, bgColor: syColorsLight[15], heightPin: 1435, height: 100)
        colorBlock.createColorBlock(viewBlock: gray4Block, stackView: stackView, bgColor: syColorsLight[16], heightPin: 1535, height: 100)
        colorBlock.createColorBlock(viewBlock: gray5Block, stackView: stackView, bgColor: syColorsLight[17], heightPin: 1635, height: 100)
        colorBlock.createColorBlock(viewBlock: gray6Block, stackView: stackView, bgColor: syColorsLight[18], heightPin: 1735, height: 100)
    }

    
    func createColorText() {
        colorText.createWhiteText(stackView: stackView, inTextField: redWhiteText, title: syColorStrings[0], block: redBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: orangeWhiteText, title: syColorStrings[1], block: orangeBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: yellowWhiteText, title: syColorStrings[2], block: yellowBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: greenWhiteText, title: syColorStrings[3], block: greenBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: mintWhiteText, title: syColorStrings[4], block: mintBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: tealWhiteText, title: syColorStrings[5], block: tealBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: cyanWhiteText, title: syColorStrings[6], block: cyanBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: blueWhiteText, title: syColorStrings[7], block: blueBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: indigoWhiteText, title: syColorStrings[8], block: indigoBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: purpleWhiteText, title: syColorStrings[9], block: purpleBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: pinkWhiteText, title: syColorStrings[10], block: pinkBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: brownWhiteText, title: syColorStrings[11], block: brownBlock)
        colorText.createWhiteText(stackView: stackView, inTextField: gray1WhiteText, title: syColorStrings[12], block: gray1Block)
        colorText.createWhiteText(stackView: stackView, inTextField: gray2WhiteText, title: syColorStrings[13], block: gray2Block)
        colorText.createWhiteText(stackView: stackView, inTextField: gray3WhiteText, title: syColorStrings[14], block: gray3Block)
        colorText.createWhiteText(stackView: stackView, inTextField: gray4WhiteText, title: syColorStrings[15], block: gray4Block)
        colorText.createWhiteText(stackView: stackView, inTextField: gray5WhiteText, title: syColorStrings[16], block: gray5Block)
        colorText.createWhiteText(stackView: stackView, inTextField: gray6WhiteText, title: syColorStrings[17], block: gray6Block)
        
        colorText.createBlackText(stackView: stackView, inTextField: redBlackText, title: syColorStrings[0], block: redBlock)
        colorText.createBlackText(stackView: stackView, inTextField: orangeBlackText, title: syColorStrings[1], block: orangeBlock)
        colorText.createBlackText(stackView: stackView, inTextField: yellowBlackText, title: syColorStrings[2], block: yellowBlock)
        colorText.createBlackText(stackView: stackView, inTextField: greenBlackText, title: syColorStrings[3], block: greenBlock)
        colorText.createBlackText(stackView: stackView, inTextField: mintBlackText, title: syColorStrings[4], block: mintBlock)
        colorText.createBlackText(stackView: stackView, inTextField: tealBlackText, title: syColorStrings[5], block: tealBlock)
        colorText.createBlackText(stackView: stackView, inTextField: cyanBlackText, title: syColorStrings[6], block: cyanBlock)
        colorText.createBlackText(stackView: stackView, inTextField: blueBlackText, title: syColorStrings[7], block: blueBlock)
        colorText.createBlackText(stackView: stackView, inTextField: indigoBlackText, title: syColorStrings[8], block: indigoBlock)
        colorText.createBlackText(stackView: stackView, inTextField: purpleBlackText, title: syColorStrings[9], block: purpleBlock)
        colorText.createBlackText(stackView: stackView, inTextField: pinkBlackText, title: syColorStrings[10], block: pinkBlock)
        colorText.createBlackText(stackView: stackView, inTextField: brownBlackText, title: syColorStrings[11], block: brownBlock)
        colorText.createBlackText(stackView: stackView, inTextField: gray1BlackText, title: syColorStrings[12], block: gray1Block)
        colorText.createBlackText(stackView: stackView, inTextField: gray2BlackText, title: syColorStrings[13], block: gray2Block)
        colorText.createBlackText(stackView: stackView, inTextField: gray3BlackText, title: syColorStrings[14], block: gray3Block)
        colorText.createBlackText(stackView: stackView, inTextField: gray4BlackText, title: syColorStrings[15], block: gray4Block)
        colorText.createBlackText(stackView: stackView, inTextField: gray5BlackText, title: syColorStrings[16], block: gray5Block)
        colorText.createBlackText(stackView: stackView, inTextField: gray6BlackText, title: syColorStrings[17], block: gray6Block)
    }
}


#Preview {
    ColorsVC()
}
