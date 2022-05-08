//
//  UIBuilder+DatePicker.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType: UIDatePicker {
    @discardableResult
    open func calendar(_ calendar: Calendar) -> UIBuilder {
        self.view.calendar = calendar
        return self
    }
    
    @discardableResult
    open func date(_ date: Date) -> UIBuilder {
        self.view.date = date
        return self
    }
    
    @discardableResult
    open func locale(_ locale: Locale?) -> UIBuilder {
        self.view.locale = locale
        return self
    }
    
    @discardableResult
    open func timeZone(_ timeZone: TimeZone?) -> UIBuilder {
        self.view.timeZone = timeZone
        return self
    }
    
    @discardableResult
    open func datePickerMode(_ datePickerMode: UIDatePicker.Mode) -> UIBuilder {
        self.view.datePickerMode = datePickerMode
        return self
    }
    
    @available(iOS 13.4, *)
    @discardableResult
    open func preferredDatePickerStyle(_ preferredDatePickerStyle: UIDatePickerStyle) -> UIBuilder {
        self.view.preferredDatePickerStyle = preferredDatePickerStyle
        return self
    }
    
    @discardableResult
    open func maximumDate(_ maximumDate: Date?) -> UIBuilder {
        self.view.maximumDate = maximumDate
        return self
    }
    
    @discardableResult
    open func minimumDate(_ minimumDate: Date?) -> UIBuilder {
        self.view.minimumDate = minimumDate
        return self
    }
    
    @discardableResult
    open func minuteInterval(_ minuteInterval: Int) -> UIBuilder {
        self.view.minuteInterval = minuteInterval
        return self
    }
    
    @discardableResult
    open func countDownDuration(_ countDownDuration: TimeInterval) -> UIBuilder {
        self.view.countDownDuration = countDownDuration
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func roundsToMinuteInterval(_ roundsToMinuteInterval: Bool) -> UIBuilder {
        self.view.roundsToMinuteInterval = roundsToMinuteInterval
        return self
    }
}
