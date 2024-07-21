//
//  ScrollView.swift
//  AppColorStyles
//
//  Created by Deren Bozer on 7/9/24.
//

import UIKit

class ScrollView: UIScrollView {
    

    /// Initializer
    /// Have to override the initializer because it's a subclass of UIButton if doing custom
    override init(frame: CGRect) {
        /// Super calls the super class or parent
        super.init(frame: frame)
        
    }

    
    /// Called when you initialize the Custom button in storyboard
    /// Needed even if you aren't using storyboards
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    /// Custom initializer
    init(viewInput: UIView) {
        super.init(frame: .zero)
    }
}
