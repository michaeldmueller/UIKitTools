//
//  LoggingService.swift
//  UIKitTools
//
//  Created by Michael Mueller on 9/25/25.
//

import Foundation
import SwiftyBeaver

class LoggingService {
    
    public static let shared = LoggingService()
    
//    private let datadogLogger = DatadogLogger()
    private let consoleLogger = SwiftyBeaver.self
    
    private init() {
        let console = ConsoleDestination()
        console.format = "$DHH:mm:ss.SSS$d $C($L)$c $M"
        console.logPrintWay = .logger(subsystem: "Main", category: "UI")
        consoleLogger.addDestination(console)
    }
    
    func debug(
        message: String,
        sender: Any,
        consoleOnly: Bool = false
    ) {
        let senderString = String(describing: type(of: sender))
        consoleLogger.debug("\(senderString): \(message)")

        if (!consoleOnly) {
//            Bugfender.print(message, sender)

//            datadogLogger.debug(
//                message: message,
//                sender: senderString
//            )
        }
    }
    
    func info(
        message: String,
        sender: Any,
        consoleOnly: Bool = false
    ) {
        let senderString = String(describing: type(of: sender))
        consoleLogger.info("\(senderString): \(message)")

        if (!consoleOnly) {
//            Bugfender.print(message, sender)

//            datadogLogger.info(
//                message: message,
//                sender: senderString
//            )
        }
    }
    
    func notice(
        message: String,
        sender: Any,
        consoleOnly: Bool = false
    ) {
        let senderString = String(describing: type(of: sender))
        consoleLogger.info("\(senderString): \(message)") // SwiftyBeaver doesn't have a notice log-level

        if (!consoleOnly) {
//            Bugfender.print(message, sender)

//            datadogLogger.notice(
//                message: message,
//                sender: senderString
//            )
        }
    }
    
    func warn(
        message: String,
        sender: Any,
        consoleOnly: Bool = false
    ) {
        let senderString = String(describing: type(of: sender))
        consoleLogger.warning("\(senderString): \(message)")

        if (!consoleOnly) {
//            Bugfender.warning(message, sender)

//            datadogLogger.warn(
//                message: message,
//                sender: senderString
//            )
        }
    }
    
    func error(
        message: String,
        sender: Any,
        consoleOnly: Bool = false
    ) {
        let senderString = String(describing: type(of: sender))
        consoleLogger.error("\(senderString): \(message)")

        if (!consoleOnly) {
//            Bugfender.error(message, sender)

//            datadogLogger.error(
//                message: message,
//                sender: senderString
//            )
        }
    }
    
    func error(
        error: Error,
        sender: Any,
        consoleOnly: Bool = false
    ) {
        let senderString = String(describing: type(of: sender))
        consoleLogger.error("\(senderString): \(error)")

        if (!consoleOnly) {
//            Bugfender.error(error, sender)

//            datadogLogger.error(
//                error: error,
//                sender: senderString
//            )
        }
    }
    
}
