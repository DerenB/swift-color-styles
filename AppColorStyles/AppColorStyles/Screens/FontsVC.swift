//
//  FontsVC.swift
//  AppColorStyles
//
//  Created by Deren Bozer on 7/8/24.
//

import UIKit

class FontsVC: UIViewController {

    /// Scroll Items
    /// Used for creating the ability to scroll the page
    let scrollingAbility = ScrollingAbility()
    let scrollView = UIScrollView()
    let stackView = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /// Background Color
        view.backgroundColor = .systemBlue
        
        /// Add the ability to scroll the page
        scrollingAbility.addScrolling(viewInput: view, scrollViewInput: scrollView, stackViewInput: stackView)
    }

}
