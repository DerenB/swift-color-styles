//
//  ColorBlockView.swift
//  AppColorStyles
//
//  Created by Deren Bozer on 7/9/24.
//

import UIKit

class ColorBlockView: UIView {

    
    /// Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    
    /// Called when you initialize the Custom button in storyboard
    /// Needed even if you aren't using storyboards
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    /// Custom Initializer
    init(backgroundColor: UIColor) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        
    }
    
    
    /// Configure Settings
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
    }
}
