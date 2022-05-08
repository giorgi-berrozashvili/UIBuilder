//
//  UIBuilder+TableView.swift
//  Created by Berrium on 16.04.22.
//

import UIKit

extension UIBuilder where ViewType: UITableView {
    @discardableResult
    open func delegate(_ delegate: UITableViewDelegate?) -> UIBuilder {
        self.view.delegate = delegate
        return self
    }
    
    @discardableResult
    open func dataSource(_ dataSource: UITableViewDataSource?) -> UIBuilder {
        self.view.dataSource = dataSource
        return self
    }
    
    @discardableResult
    open func tableHeaderView(_ tableHeaderView: UIView?) -> UIBuilder {
        self.view.tableHeaderView = tableHeaderView
        return self
    }
    
    @discardableResult
    open func tableFooterView(_ tableFooterView: UIView?) -> UIBuilder {
        self.view.tableFooterView = tableFooterView
        return self
    }
    
    @discardableResult
    open func backgroundView(_ backgroundView: UIView?) -> UIBuilder {
        self.view.backgroundView = backgroundView
        return self
    }
    
    @discardableResult
    open func rowHeight(_ rowHeight: CGFloat) -> UIBuilder {
        self.view.rowHeight = rowHeight
        return self
    }
    
    @discardableResult
    open func estimatedRowHeight(_ estimatedRowHeight: CGFloat) -> UIBuilder {
        self.view.estimatedRowHeight = estimatedRowHeight
        return self
    }
    
    @discardableResult
    open func sectionHeaderHeight(_ sectionHeaderHeight: CGFloat) -> UIBuilder {
        self.view.sectionHeaderHeight = sectionHeaderHeight
        return self
    }
    
    @discardableResult
    open func sectionFooterHeight(_ sectionFooterHeight: CGFloat) -> UIBuilder {
        self.view.sectionFooterHeight = sectionFooterHeight
        return self
    }
    
    @discardableResult
    open func estimatedSectionHeaderHeight(_ estimatedSectionHeaderHeight: CGFloat) -> UIBuilder {
        self.view.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight
        return self
    }
    
    @discardableResult
    open func estimatedSectionFooterHeight(_ estimatedSectionFooterHeight: CGFloat) -> UIBuilder {
        self.view.estimatedSectionFooterHeight = estimatedSectionFooterHeight
        return self
    }
    
    @discardableResult
    open func cellLayoutMarginsFollowReadableWidth(_ cellLayoutMarginsFollowReadableWidth: Bool) -> UIBuilder {
        self.view.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth
        return self
    }
    
    @discardableResult
    open func separatorColor(_ separatorColor: UIColor?) -> UIBuilder {
        self.view.separatorColor = separatorColor
        return self
    }
    
    @discardableResult
    open func separatorInset(_ separatorInset: UIEdgeInsets) -> UIBuilder {
        self.view.separatorInset = separatorInset
        return self
    }
    
    @discardableResult
    open func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle) -> UIBuilder {
        self.view.separatorStyle = separatorStyle
        return self
    }
    
    @discardableResult
    open func separatorEffect(_ separatorEffect: UIVisualEffect?) -> UIBuilder {
        self.view.separatorEffect = separatorEffect
        return self
    }
    
    @discardableResult
    open func allowsSelection(_ allowsSelection: Bool) -> UIBuilder {
        self.view.allowsSelection = allowsSelection
        return self
    }
    
    @discardableResult
    open func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> UIBuilder {
        self.view.allowsMultipleSelection = allowsMultipleSelection
        return self
    }
    
    @discardableResult
    open func allowsSelectionDuringEditing(_ allowsSelectionDuringEditing: Bool) -> UIBuilder {
        self.view.allowsSelectionDuringEditing = allowsSelectionDuringEditing
        return self
    }
    
    @discardableResult
    open func allowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing: Bool) -> UIBuilder {
        self.view.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing
        return self
    }
    
    @discardableResult
    open func sectionIndexMinimumDisplayRowCount(_ sectionIndexMinimumDisplayRowCount: Int) -> UIBuilder {
        self.view.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount
        return self
    }
    
    @discardableResult
    open func isEditing(_ isEditing: Bool) -> UIBuilder {
        self.view.isEditing = isEditing
        return self
    }
    
    @discardableResult
    open func sectionIndexColor(_ sectionIndexColor: UIColor?) -> UIBuilder {
        self.view.sectionIndexColor = sectionIndexColor
        return self
    }
    
    @discardableResult
    open func sectionIndexBackgroundColor(_ sectionIndexBackgroundColor: UIColor?) -> UIBuilder {
        self.view.sectionIndexBackgroundColor = sectionIndexBackgroundColor
        return self
    }
    
    @discardableResult
    open func sectionIndexTrackingBackgroundColor(_ sectionIndexTrackingBackgroundColor: UIColor?) -> UIBuilder {
        self.view.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult
    open func prefetchDataSource(_ prefetchDataSource: UITableViewDataSourcePrefetching?) -> UIBuilder {
        self.view.prefetchDataSource = prefetchDataSource
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    open func insetsContentViewsToSafeArea(_ insetsContentViewsToSafeArea: Bool) -> UIBuilder {
        self.view.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    open func separatorInsetReference(_ separatorInsetReference: UITableView.SeparatorInsetReference) -> UIBuilder {
        self.view.separatorInsetReference = separatorInsetReference
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    open func dragDelegate(_ dragDelegate: UITableViewDragDelegate?) -> UIBuilder {
        self.view.dragDelegate = dragDelegate
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    open func dropDelegate(_ dropDelegate: UITableViewDropDelegate?) -> UIBuilder {
        self.view.dropDelegate = dropDelegate
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    open func dragInteractionEnabled(_ dragInteractionEnabled: Bool) -> UIBuilder {
        self.view.dragInteractionEnabled = dragInteractionEnabled
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func sectionHeaderTopPadding(_ sectionHeaderTopPadding: CGFloat) -> UIBuilder {
        self.view.sectionHeaderTopPadding = sectionHeaderTopPadding
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func fillerRowHeight(_ fillerRowHeight: CGFloat) -> UIBuilder {
        self.view.fillerRowHeight = fillerRowHeight
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func allowsFocusDuringEditing(_ allowsFocusDuringEditing: Bool) -> UIBuilder {
        self.view.allowsFocusDuringEditing = allowsFocusDuringEditing
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func allowsFocus(_ allowsFocus: Bool) -> UIBuilder {
        self.view.allowsFocus = allowsFocus
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func isPrefetchingEnabled(_ isPrefetchingEnabled: Bool) -> UIBuilder {
        self.view.isPrefetchingEnabled = isPrefetchingEnabled
        return self
    }
}
