//
//  AlertService.swift
//  UIKitTools
//
//  Created by Michael Mueller on 9/3/25.
//

import UIKit

public class AlertService {
    
    public static func displayAlert(
        title: String,
        message: String,
        presenter: UIViewController,
        buttonText: String = "Okay",
        completion: (() -> Void)? = nil
    ) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: buttonText, style: UIAlertAction.Style.default) { action in
                DispatchQueue.main.async {
                    completion?()
                }
            })
            presenter.present(alert, animated: true, completion: nil)
        }
    }
    
    public static func displayConfirmation(
        title: String,
        message: String,
        cancelText: String = "Cancel",
        confirmationText: String = "Confirm",
        presenter: UIViewController,
        positiveCompletion: (() -> Void)?,
        cancelCompletion: (() -> Void)?
    ) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: cancelText, style: UIAlertAction.Style.cancel) { action in
                cancelCompletion?()
            })
            alert.addAction(UIAlertAction(title: confirmationText, style: UIAlertAction.Style.default) { action in
                positiveCompletion?()
            })
            presenter.present(alert, animated: true, completion: nil)
        }
    }
    
    public static func displayActionSheet(
        title: String,
        message: String,
        actions: [UIAlertAction],
        presenter: UIViewController
    ) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.actionSheet)
            
            for action in actions {
                alert.addAction(action)
            }

            presenter.present(alert, animated: true, completion: nil)
        }
    }
    
}
