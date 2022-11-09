//
//  UIBuilder+TableView.swift
//  Created by Berrium on 16.04.22.
//

import UIKit

extension UIBuilder where ViewType: UITableView {
    @discardableResult
    public func delegate(_ delegate: UITableViewDelegate?) -> UIBuilder {
        self.view.delegate = delegate
        return self
    }
    
    @discardableResult
    public func dataSource(_ dataSource: UITableViewDataSource?) -> UIBuilder {
        self.view.dataSource = dataSource
        return self
    }
    
    @discardableResult
    public func tableHeaderView(_ tableHeaderView: UIView?) -> UIBuilder {
        self.view.tableHeaderView = tableHeaderView
        return self
    }
    
    @discardableResult
    public func tableFooterView(_ tableFooterView: UIView?) -> UIBuilder {
        self.view.tableFooterView = tableFooterView
        return self
    }
    
    @discardableResult
    public func backgroundView(_ backgroundView: UIView?) -> UIBuilder {
        self.view.backgroundView = backgroundView
        return self
    }
    
    @discardableResult
    public func rowHeight(_ rowHeight: CGFloat) -> UIBuilder {
        self.view.rowHeight = rowHeight
        return self
    }
    
    @discardableResult
    public func estimatedRowHeight(_ estimatedRowHeight: CGFloat) -> UIBuilder {
        self.view.estimatedRowHeight = estimatedRowHeight
        return self
    }
    
    @discardableResult
    public func sectionHeaderHeight(_ sectionHeaderHeight: CGFloat) -> UIBuilder {
        self.view.sectionHeaderHeight = sectionHeaderHeight
        return self
    }
    
    @discardableResult
    public func sectionFooterHeight(_ sectionFooterHeight: CGFloat) -> UIBuilder {
        self.view.sectionFooterHeight = sectionFooterHeight
        return self
    }
    
    @discardableResult
    public func estimatedSectionHeaderHeight(_ estimatedSectionHeaderHeight: CGFloat) -> UIBuilder {
        self.view.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight
        return self
    }
    
    @discardableResult
    public func estimatedSectionFooterHeight(_ estimatedSectionFooterHeight: CGFloat) -> UIBuilder {
        self.view.estimatedSectionFooterHeight = estimatedSectionFooterHeight
        return self
    }
    
    @discardableResult
    public func cellLayoutMarginsFollowReadableWidth(_ cellLayoutMarginsFollowReadableWidth: Bool) -> UIBuilder {
        self.view.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth
        return self
    }
    
    @discardableResult
    public func separatorColor(_ separatorColor: UIColor?) -> UIBuilder {
        self.view.separatorColor = separatorColor
        return self
    }
    
    @discardableResult
    public func separatorInset(_ separatorInset: UIEdgeInsets) -> UIBuilder {
        self.view.separatorInset = separatorInset
        return self
    }
    
    @discardableResult
    public func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle) -> UIBuilder {
        self.view.separatorStyle = separatorStyle
        return self
    }
    
    @discardableResult
    public func separatorEffect(_ separatorEffect: UIVisualEffect?) -> UIBuilder {
        self.view.separatorEffect = separatorEffect
        return self
    }
    
    @discardableResult
    public func allowsSelection(_ allowsSelection: Bool) -> UIBuilder {
        self.view.allowsSelection = allowsSelection
        return self
    }
    
    @discardableResult
    public func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> UIBuilder {
        self.view.allowsMultipleSelection = allowsMultipleSelection
        return self
    }
    
    @discardableResult
    public func allowsSelectionDuringEditing(_ allowsSelectionDuringEditing: Bool) -> UIBuilder {
        self.view.allowsSelectionDuringEditing = allowsSelectionDuringEditing
        return self
    }
    
    @discardableResult
    public func allowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing: Bool) -> UIBuilder {
        self.view.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing
        return self
    }
    
    @discardableResult
    public func sectionIndexMinimumDisplayRowCount(_ sectionIndexMinimumDisplayRowCount: Int) -> UIBuilder {
        self.view.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount
        return self
    }
    
    @discardableResult
    public func isEditing(_ isEditing: Bool) -> UIBuilder {
        self.view.isEditing = isEditing
        return self
    }
    
    @discardableResult
    public func sectionIndexColor(_ sectionIndexColor: UIColor?) -> UIBuilder {
        self.view.sectionIndexColor = sectionIndexColor
        return self
    }
    
    @discardableResult
    public func sectionIndexBackgroundColor(_ sectionIndexBackgroundColor: UIColor?) -> UIBuilder {
        self.view.sectionIndexBackgroundColor = sectionIndexBackgroundColor
        return self
    }
    
    @discardableResult
    public func sectionIndexTrackingBackgroundColor(_ sectionIndexTrackingBackgroundColor: UIColor?) -> UIBuilder {
        self.view.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult
    public func prefetchDataSource(_ prefetchDataSource: UITableViewDataSourcePrefetching?) -> UIBuilder {
        self.view.prefetchDataSource = prefetchDataSource
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func insetsContentViewsToSafeArea(_ insetsContentViewsToSafeArea: Bool) -> UIBuilder {
        self.view.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func separatorInsetReference(_ separatorInsetReference: UITableView.SeparatorInsetReference) -> UIBuilder {
        self.view.separatorInsetReference = separatorInsetReference
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func dragDelegate(_ dragDelegate: UITableViewDragDelegate?) -> UIBuilder {
        self.view.dragDelegate = dragDelegate
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func dropDelegate(_ dropDelegate: UITableViewDropDelegate?) -> UIBuilder {
        self.view.dropDelegate = dropDelegate
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func dragInteractionEnabled(_ dragInteractionEnabled: Bool) -> UIBuilder {
        self.view.dragInteractionEnabled = dragInteractionEnabled
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    public func sectionHeaderTopPadding(_ sectionHeaderTopPadding: CGFloat) -> UIBuilder {
        self.view.sectionHeaderTopPadding = sectionHeaderTopPadding
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    public func fillerRowHeight(_ fillerRowHeight: CGFloat) -> UIBuilder {
        self.view.fillerRowHeight = fillerRowHeight
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    public func allowsFocusDuringEditing(_ allowsFocusDuringEditing: Bool) -> UIBuilder {
        self.view.allowsFocusDuringEditing = allowsFocusDuringEditing
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    public func allowsFocus(_ allowsFocus: Bool) -> UIBuilder {
        self.view.allowsFocus = allowsFocus
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    public func isPrefetchingEnabled(_ isPrefetchingEnabled: Bool) -> UIBuilder {
        self.view.isPrefetchingEnabled = isPrefetchingEnabled
        return self
    }
}
