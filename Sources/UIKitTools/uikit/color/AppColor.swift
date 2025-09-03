//
//  AppColor.swift
//  UIKitTools
//
//  To use - call `AppColor.initialize` in your AppDelegate with whatever colors you're providing
//  ex: AppColor.initialize(
//          primary = UIColor(named: "primary")!
//      )
//
//  Created by Michael Mueller on 9/3/25.
//

import UIKit

public class AppColor {
    
    static var primary = UIColor.black
    static var textPrimary = UIColor.darkText
    static var textSecondary = UIColor.lightText
    static var container = UIColor.gray
    static var containerLight = UIColor.lightGray
    static var outline = UIColor.separator
    static var onPrimary = UIColor.white
    static var surface = UIColor.white
    static var error = UIColor.red
    
    static func initialize(
        primary: UIColor = UIColor.black,
        textPrimary: UIColor = UIColor.darkText,
        textSecondary: UIColor = UIColor.lightText,
        container: UIColor = UIColor.gray,
        containerLight: UIColor = UIColor.lightGray,
        outline: UIColor = UIColor.separator,
        onPrimary: UIColor = UIColor.white,
        surface: UIColor = UIColor.white,
        error: UIColor = UIColor.red
    ) {
        AppColor.primary = primary
        AppColor.textPrimary = textPrimary
        AppColor.textSecondary = textSecondary
        AppColor.container = container
        AppColor.containerLight = containerLight
        AppColor.outline = outline
        AppColor.onPrimary = onPrimary
        AppColor.surface = surface
        AppColor.error = error
    }
    
}
