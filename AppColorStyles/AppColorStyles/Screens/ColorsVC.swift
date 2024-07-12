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
    
    /// Create UIViews for the Color Blocks
    let redBlock = UIView(), orangeBlock = UIView(), yellowBlock = UIView(), greenBlock = UIView(), mintBlock = UIView(), tealBlock = UIView(), cyanBlock = UIView(), blueBlock = UIView(), indigoBlock = UIView(), purpleBlock = UIView(), pinkBlock = UIView(), brownBlock = UIView(), spacerBlock = UIView(), gray1Block = UIView(), gray2Block = UIView(), gray3Block = UIView(), gray4Block = UIView(), gray5Block = UIView(), gray6Block = UIView()
    
    /// Color Block Array
    var colorBlockArray: [UIView] = []

    
    /// Color Text Function
    let colorText = ColorSystemText()
    
    /// Create UI Text Fields for labeling the color blocks
    let redWhiteText = UITextField(), orangeWhiteText = UITextField(), yellowWhiteText = UITextField(), greenWhiteText = UITextField(), mintWhiteText = UITextField(), tealWhiteText = UITextField(), cyanWhiteText = UITextField(), blueWhiteText = UITextField(), indigoWhiteText = UITextField(), purpleWhiteText = UITextField(), pinkWhiteText = UITextField(), brownWhiteText = UITextField(), gray1WhiteText = UITextField(), gray2WhiteText = UITextField(), gray3WhiteText = UITextField(), gray4WhiteText = UITextField(), gray5WhiteText = UITextField(), gray6WhiteText = UITextField(), redBlackText = UITextField(), orangeBlackText = UITextField(), yellowBlackText = UITextField(), greenBlackText = UITextField(), mintBlackText = UITextField(), tealBlackText = UITextField(), cyanBlackText = UITextField(), blueBlackText = UITextField(), indigoBlackText = UITextField(), purpleBlackText = UITextField(), pinkBlackText = UITextField(), brownBlackText = UITextField(), gray1BlackText = UITextField(), gray2BlackText = UITextField(), gray3BlackText = UITextField(), gray4BlackText = UITextField(), gray5BlackText = UITextField(), gray6BlackText = UITextField()
    
    /// Color Text Arrays
    var whiteTextArray: [UITextField] = []
    var blackTextArray: [UITextField] = []
    
    
    /// System Colors Array
    let syColorStrings: [String] = [".systemRed",".systemOrange",".systemYellow",".systemGreen",".systemMint",".systemTeal",".systemCyan",".systemBlue",".systemIndigo",".systemPurple",".systemPink",".systemBrown", ".systemGray", ".systemGray2", ".systemGray3", ".systemGray4", ".systemGray5", ".systemGray6"]
    var syColorsLight: [UIColor] = []
    let c: [CGFloat] = [255, 59, 48, 255, 149, 0, 255, 204, 0, 52, 199, 89, 0, 199, 190, 48, 176, 199, 50, 173, 230, 0, 122, 255, 88, 86, 214, 175, 82, 222, 255, 45, 85, 162, 132, 94, 255, 255, 255, 142, 142, 147, 174, 174, 178, 199, 199, 204, 209, 209, 214, 229, 229, 234, 242, 242, 247]
    
    
    /// RGB Values Function
    let rgbFunc = RgbColorValues()
    
    /// Create RGB Label Text Fields
    let redR = UITextField(), redG = UITextField(), redB = UITextField(), orangeR = UITextField(), orangeG = UITextField(), orangeB = UITextField(), yellowR = UITextField(), yellowG = UITextField(), yellowB = UITextField(), greenR = UITextField(), greenG = UITextField(), greenB = UITextField(), mintR = UITextField(), mintG = UITextField(), mintB = UITextField(), tealR = UITextField(), tealG = UITextField(), tealB = UITextField(), cyanR = UITextField(), cyanG = UITextField(), cyanB = UITextField(), blueR = UITextField(), blueG = UITextField(), blueB = UITextField(), indigoR = UITextField(), indigoG = UITextField(), indigoB = UITextField(), purpleR = UITextField(), purpleG = UITextField(), purpleB = UITextField(), pinkR = UITextField(), pinkG = UITextField(), pinkB = UITextField(), brownR = UITextField(), brownG = UITextField(), brownB = UITextField(), gray1R = UITextField(), gray1G = UITextField(), gray1B = UITextField(), gray2R = UITextField(), gray2G = UITextField(), gray2B = UITextField(), gray3R = UITextField(), gray3G = UITextField(), gray3B = UITextField(), gray4R = UITextField(), gray4G = UITextField(), gray4B = UITextField(), gray5R = UITextField(), gray5G = UITextField(), gray5B = UITextField(), gray6R = UITextField(), gray6G = UITextField(), gray6B = UITextField()
    
    /// Array for RGB Values
    var rgbArray: [UITextField] = []

    
    /// View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Add the RGB values to the UIColor Array
        createArraysOfValues()

        /// Background Color
        view.backgroundColor = .white
        
        /// Add the ability to scroll the page
        scrollingAbility.addScrolling(viewInput: view, scrollViewInput: scrollView, stackViewInput: stackView)
        
        /// Adds the color blocks
        createBlocks()
        
        /// Add Color text
        createColorText()
        
        addRGBTextValues()
    }
    
    
    /// Add the initialized values to Arrays
    func createArraysOfValues() {
        
        /// Add the CGFloat colors Array to the System Colors Array and convert to UIColor
        for i in stride(from: 0, to: 57, by: 3) {
            syColorsLight.append(colorConvert(red: c[i], green: c[i+1], blue: c[i+2]))
        }
        
        /// Add the UIViews for the color blocks to the array
        colorBlockArray.append(contentsOf: [redBlock, orangeBlock, yellowBlock, greenBlock, mintBlock, tealBlock, cyanBlock, blueBlock, indigoBlock, purpleBlock, pinkBlock, brownBlock, spacerBlock, gray1Block, gray2Block, gray3Block, gray4Block, gray5Block, gray6Block])
        
        /// Add the text field to their arrays
        whiteTextArray.append(contentsOf: [redWhiteText, orangeWhiteText, yellowWhiteText, greenWhiteText, mintWhiteText, tealWhiteText, cyanWhiteText, blueWhiteText, indigoWhiteText, purpleWhiteText, pinkWhiteText, brownWhiteText, gray1WhiteText, gray2WhiteText, gray3WhiteText, gray4WhiteText, gray5WhiteText, gray6WhiteText])
        blackTextArray.append(contentsOf:   [redBlackText, orangeBlackText, yellowBlackText, greenBlackText, mintBlackText, tealBlackText, cyanBlackText, blueBlackText, indigoBlackText, purpleBlackText, pinkBlackText, brownBlackText, gray1BlackText, gray2BlackText, gray3BlackText, gray4BlackText, gray5BlackText, gray6BlackText])
        
        /// Add the RGB Text Fields to their array
        rgbArray.append(contentsOf: [redR, redG, redB, orangeR, orangeG, orangeB, yellowR, yellowG, yellowB, greenR, greenG, greenB, mintR, mintG, mintB, tealR, tealG, tealB, cyanR, cyanG, cyanB, blueR, blueG, blueB, indigoR, indigoG, indigoB, purpleR, purpleG, purpleB, pinkR, pinkG, pinkB, brownR, brownG, brownB, gray1R, gray1G, gray1B, gray2R, gray2G, gray2B, gray3R, gray3G, gray3B, gray4R, gray4G, gray4B, gray5R, gray5G, gray5B, gray6R, gray6G, gray6B
        ])
        
    }
    
    
    /// Function for converting RGB colors to UIColor
    func colorConvert(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1.0)
    }
    
    
    /// Function for Creating all of the color blocks
    /// Calls the CreateColorBlock function
    func createBlocks() {
        
        /// Variable for incrementing the target top anchor
        var heightPint = CGFloat(10)
        
        /// For Loop for creating and adding the color blocks
        /// Increment 12 is for the blank spacer block between colors and grays
        for i in 0..<19 {
            if i == 12 {
                colorBlock.createColorBlock(viewBlock: colorBlockArray[i], stackView: stackView, bgColor: syColorsLight[i], heightPin: heightPint, height: 25)
                heightPint += 25
            } else {
                colorBlock.createColorBlock(viewBlock: colorBlockArray[i], stackView: stackView, bgColor: syColorsLight[i], heightPin: heightPint, height: 100)
                heightPint += 100
            }
        }
    }

    
    func createColorText() {
        
        /// For Loop for adding the White Text labels to the Color Blocks
        for i in 0..<12 {
            colorText.createWhiteText(stackView: stackView, inTextField: whiteTextArray[i], title: syColorStrings[i], block: colorBlockArray[i])
        }
        
        /// For Loop for adding the White Text labels to the Gray Blocks
        for i in 12..<18 {
            colorText.createWhiteText(stackView: stackView, inTextField: whiteTextArray[i], title: syColorStrings[i], block: colorBlockArray[i+1])
        }
        
        /// For Loop for adding the Black Text labels to the Color Blocks
        for i in 0..<12 {
            colorText.createBlackText(stackView: stackView, inTextField: blackTextArray[i], title: syColorStrings[i], block: colorBlockArray[i])
        }
        
        /// For Loop for adding the Black Text labels to the Gray Blocks
        for i in 12..<18 {
            colorText.createBlackText(stackView: stackView, inTextField: blackTextArray[i], title: syColorStrings[i], block: colorBlockArray[i+1])
        }
    }
    
    
    func addRGBTextValues() {
        
        /// Variables for incrementing the colors array
        var redVal = 0
        var greenVal = 1
        var blueVal = 2
        
        /// Variables for incrementing the gray colors array
        var gRedVal = 39
        var gGreenVal = 40
        var gBlueVal = 41
        
        /// Adding the RGB values for the color blocks
        for i in 0..<12 {
            rgbFunc.addRedValue(stackView: stackView, colorBlock: colorBlockArray[i], inputField: rgbArray[redVal], intVal: Int(c[redVal]))
            rgbFunc.addGreenValue(stackView: stackView, colorBlock: colorBlockArray[i], inputField: rgbArray[greenVal], intVal: Int(c[greenVal]))
            rgbFunc.addBlueValue(stackView: stackView, colorBlock: colorBlockArray[i], inputField: rgbArray[blueVal], intVal: Int(c[blueVal]))
            redVal += 3
            greenVal += 3
            blueVal += 3
        }
        
        /// Adding the RGB values for the gray blocks
        for i in 12..<18 {
            rgbFunc.addRedValue(stackView: stackView, colorBlock: colorBlockArray[i+1], inputField: rgbArray[gRedVal-3], intVal: Int(c[gRedVal]))
            rgbFunc.addGreenValue(stackView: stackView, colorBlock: colorBlockArray[i+1], inputField: rgbArray[gGreenVal-3], intVal: Int(c[gGreenVal]))
            rgbFunc.addBlueValue(stackView: stackView, colorBlock: colorBlockArray[i+1], inputField: rgbArray[gBlueVal-3], intVal: Int(c[gBlueVal]))
            gRedVal += 3
            gGreenVal += 3
            gBlueVal += 3
        }
        
    }
    
    
}

