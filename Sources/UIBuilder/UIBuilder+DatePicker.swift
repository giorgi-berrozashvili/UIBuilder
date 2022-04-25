//
//  UIBuilder+DatePicker.swift
//  Created by Berrium on 25.04.22.
//

import UIKit

extension UIBuilder where ViewType == UIDatePicker {
    @discardableResult
    open func calendar(_ calendar: Calendar) -> UIBuilder<UIDatePicker> {
        self.view.calendar = calendar
        return self
    }
    
    @discardableResult
    open func date(_ date: Date) -> UIBuilder<UIDatePicker> {
        self.view.date = date
        return self
    }
    
    @discardableResult
    open func locale(_ locale: Locale?) -> UIBuilder<UIDatePicker> {
        self.view.locale = locale
        return self
    }
    
    @discardableResult
    open func timeZone(_ timeZone: TimeZone?) -> UIBuilder<UIDatePicker> {
        self.view.timeZone = timeZone
        return self
    }
    
    @discardableResult
    open func datePickerMode(_ datePickerMode: UIDatePicker.Mode) -> UIBuilder<UIDatePicker> {
        self.view.datePickerMode = datePickerMode
        return self
    }
    
    @available(iOS 13.4, *)
    @discardableResult
    open func preferredDatePickerStyle(_ preferredDatePickerStyle: UIDatePickerStyle) -> UIBuilder<UIDatePicker> {
        self.view.preferredDatePickerStyle = preferredDatePickerStyle
        return self
    }
    
    @discardableResult
    open func maximumDate(_ maximumDate: Date?) -> UIBuilder<UIDatePicker> {
        self.view.maximumDate = maximumDate
        return self
    }
    
    @discardableResult
    open func minimumDate(_ minimumDate: Date?) -> UIBuilder<UIDatePicker> {
        self.view.minimumDate = minimumDate
        return self
    }
    
    @discardableResult
    open func minuteInterval(_ minuteInterval: Int) -> UIBuilder<UIDatePicker> {
        self.view.minuteInterval = minuteInterval
        return self
    }
    
    @discardableResult
    open func countDownDuration(_ countDownDuration: TimeInterval) -> UIBuilder<UIDatePicker> {
        self.view.countDownDuration = countDownDuration
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func roundsToMinuteInterval(_ roundsToMinuteInterval: Bool) -> UIBuilder<UIDatePicker> {
        self.view.roundsToMinuteInterval = roundsToMinuteInterval
        return self
    }
}
