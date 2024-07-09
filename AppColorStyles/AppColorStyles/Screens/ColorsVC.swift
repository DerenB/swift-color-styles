//
//  ColorsVC.swift
//  AppColorStyles
//
//  Created by Deren Bozer on 7/8/24.
//

import UIKit

class ColorsVC: UIViewController {
    
    let testView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGray
        
        configureView()
    }
    
    
    func configureView() {
        view.addSubview(testView)
        testView.translatesAutoresizingMaskIntoConstraints = false
        
        testView.backgroundColor = .systemRed
        
        NSLayoutConstraint.activate([
            testView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            testView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            testView.widthAnchor.constraint(equalTo: view.widthAnchor),
            testView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }

}


#Preview {
    ColorsVC()
}
