//
//  UIBuilder+DatePicker.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType: UIDatePicker {
    @discardableResult
    public func calendar(_ calendar: Calendar) -> UIBuilder {
        self.view.calendar = calendar
        return self
    }
    
    @discardableResult
    public func date(_ date: Date) -> UIBuilder {
        self.view.date = date
        return self
    }
    
    @discardableResult
    public func locale(_ locale: Locale?) -> UIBuilder {
        self.view.locale = locale
        return self
    }
    
    @discardableResult
    public func timeZone(_ timeZone: TimeZone?) -> UIBuilder {
        self.view.timeZone = timeZone
        return self
    }
    
    @discardableResult
    public func datePickerMode(_ datePickerMode: UIDatePicker.Mode) -> UIBuilder {
        self.view.datePickerMode = datePickerMode
        return self
    }
    
    @available(iOS 13.4, *)
    @discardableResult
    public func preferredDatePickerStyle(_ preferredDatePickerStyle: UIDatePickerStyle) -> UIBuilder {
        self.view.preferredDatePickerStyle = preferredDatePickerStyle
        return self
    }
    
    @discardableResult
    public func maximumDate(_ maximumDate: Date?) -> UIBuilder {
        self.view.maximumDate = maximumDate
        return self
    }
    
    @discardableResult
    public func minimumDate(_ minimumDate: Date?) -> UIBuilder {
        self.view.minimumDate = minimumDate
        return self
    }
    
    @discardableResult
    public func minuteInterval(_ minuteInterval: Int) -> UIBuilder {
        self.view.minuteInterval = minuteInterval
        return self
    }
    
    @discardableResult
    public func countDownDuration(_ countDownDuration: TimeInterval) -> UIBuilder {
        self.view.countDownDuration = countDownDuration
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    public func roundsToMinuteInterval(_ roundsToMinuteInterval: Bool) -> UIBuilder {
        self.view.roundsToMinuteInterval = roundsToMinuteInterval
        return self
    }
}
