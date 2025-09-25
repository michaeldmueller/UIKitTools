//
//  Extensions.swift
//  UIKitTools
//
//  Created by Michael Mueller on 9/25/25.
//

import UIKit

extension UIViewController {
        
    func logError(error: Error) {
        LoggingService.shared.error(error: error, sender: self)
    }
    
    func logError(errorMessage: String) {
        LoggingService.shared.error(message: errorMessage, sender: self)
    }
    
    func displayError(
        title: String = "Uh oh",
        message: String = "Something went wrong. If this issue persists, contact us.",
        buttonText: String = "Okay",
        completion: (() -> Void)? = nil
    ) {
        DispatchQueue.main.async {
            let presenter: UIViewController
            if let tabBarController = self.tabBarController {
                presenter = tabBarController
            } else if let navigationController = self.navigationController {
                presenter = navigationController
            } else {
                presenter = self
            }
            
            AlertService.displayAlert(
                title: title,
                message: message,
                presenter: presenter,
                buttonText: buttonText,
                completion: completion
            )
        }
    }
    
}

extension UIView {
    
    func addShadow(
        offset: CGFloat = 1,
        radius: CGFloat = 8,
        opacity: Float = 0.15,
        isInitiallyHidden: Bool = false
    ) {
        if (isInitiallyHidden) {
            layer.shadowColor = UIColor.clear.cgColor
        } else {
            layer.shadowColor = UIColor.black.cgColor
        }
        layer.shadowOffset = CGSize(width: 0, height: offset)
        layer.shadowOpacity = opacity
        layer.shadowRadius = radius
        layer.masksToBounds = false
    }
    
    func hideShadow() {
        layer.shadowColor = UIColor.clear.cgColor
    }
    
    func showShadow() {
        layer.shadowColor = UIColor.black.cgColor
    }
    
    func removeShadow() {
        layer.shadowColor = UIColor.clear.cgColor
        layer.shadowOffset = CGSize.zero
        layer.shadowOpacity = 0
    }
    
}
