//
//  UIBuilder+TableView.swift
//  UIBuilderShowcase
//
//  Created by Giorgi Berozashvili on 16.04.22.
//

import UIKit

extension UIBuilder where ViewType == UITableView {
    @discardableResult
    open func delegate(_ delegate: UITableViewDelegate?) -> UIBuilder<UITableView> {
        self.view.delegate = delegate
        return self
    }
    
    @discardableResult
    open func dataSource(_ dataSource: UITableViewDataSource?) -> UIBuilder<UITableView> {
        self.view.dataSource = dataSource
        return self
    }
    
    @discardableResult
    open func tableHeaderView(_ tableHeaderView: UIView?) -> UIBuilder<UITableView> {
        self.view.tableHeaderView = tableHeaderView
        return self
    }
    
    @discardableResult
    open func tableFooterView(_ tableFooterView: UIView?) -> UIBuilder<UITableView> {
        self.view.tableFooterView = tableFooterView
        return self
    }
    
    @discardableResult
    open func backgroundView(_ backgroundView: UIView?) -> UIBuilder<UITableView> {
        self.view.backgroundView = backgroundView
        return self
    }
    
    @discardableResult
    open func rowHeight(_ rowHeight: CGFloat) -> UIBuilder<UITableView> {
        self.view.rowHeight = rowHeight
        return self
    }
    
    @discardableResult
    open func estimatedRowHeight(_ estimatedRowHeight: CGFloat) -> UIBuilder<UITableView> {
        self.view.estimatedRowHeight = estimatedRowHeight
        return self
    }
    
    @discardableResult
    open func sectionHeaderHeight(_ sectionHeaderHeight: CGFloat) -> UIBuilder<UITableView> {
        self.view.sectionHeaderHeight = sectionHeaderHeight
        return self
    }
    
    @discardableResult
    open func sectionFooterHeight(_ sectionFooterHeight: CGFloat) -> UIBuilder<UITableView> {
        self.view.sectionFooterHeight = sectionFooterHeight
        return self
    }
    
    @discardableResult
    open func estimatedSectionHeaderHeight(_ estimatedSectionHeaderHeight: CGFloat) -> UIBuilder<UITableView> {
        self.view.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight
        return self
    }
    
    @discardableResult
    open func estimatedSectionFooterHeight(_ estimatedSectionFooterHeight: CGFloat) -> UIBuilder<UITableView> {
        self.view.estimatedSectionFooterHeight = estimatedSectionFooterHeight
        return self
    }
    
    @discardableResult
    open func cellLayoutMarginsFollowReadableWidth(_ cellLayoutMarginsFollowReadableWidth: Bool) -> UIBuilder<UITableView> {
        self.view.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth
        return self
    }
    
    @discardableResult
    open func separatorColor(_ separatorColor: UIColor?) -> UIBuilder<UITableView> {
        self.view.separatorColor = separatorColor
        return self
    }
    
    @discardableResult
    open func separatorInset(_ separatorInset: UIEdgeInsets) -> UIBuilder<UITableView> {
        self.view.separatorInset = separatorInset
        return self
    }
    
    @discardableResult
    open func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle) -> UIBuilder<UITableView> {
        self.view.separatorStyle = separatorStyle
        return self
    }
    
    @discardableResult
    open func separatorEffect(_ separatorEffect: UIVisualEffect?) -> UIBuilder<UITableView> {
        self.view.separatorEffect = separatorEffect
        return self
    }
    
    @discardableResult
    open func allowsSelection(_ allowsSelection: Bool) -> UIBuilder<UITableView> {
        self.view.allowsSelection = allowsSelection
        return self
    }
    
    @discardableResult
    open func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> UIBuilder<UITableView> {
        self.view.allowsMultipleSelection = allowsMultipleSelection
        return self
    }
    
    @discardableResult
    open func allowsSelectionDuringEditing(_ allowsSelectionDuringEditing: Bool) -> UIBuilder<UITableView> {
        self.view.allowsSelectionDuringEditing = allowsSelectionDuringEditing
        return self
    }
    
    @discardableResult
    open func allowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing: Bool) -> UIBuilder<UITableView> {
        self.view.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing
        return self
    }
    
    @discardableResult
    open func sectionIndexMinimumDisplayRowCount(_ sectionIndexMinimumDisplayRowCount: Int) -> UIBuilder<UITableView> {
        self.view.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount
        return self
    }
    
    @discardableResult
    open func isEditing(_ isEditing: Bool) -> UIBuilder<UITableView> {
        self.view.isEditing = isEditing
        return self
    }
    
    @discardableResult
    open func sectionIndexColor(_ sectionIndexColor: UIColor?) -> UIBuilder<UITableView> {
        self.view.sectionIndexColor = sectionIndexColor
        return self
    }
    
    @discardableResult
    open func sectionIndexBackgroundColor(_ sectionIndexBackgroundColor: UIColor?) -> UIBuilder<UITableView> {
        self.view.sectionIndexBackgroundColor = sectionIndexBackgroundColor
        return self
    }
    
    @discardableResult
    open func sectionIndexTrackingBackgroundColor(_ sectionIndexTrackingBackgroundColor: UIColor?) -> UIBuilder<UITableView> {
        self.view.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult
    open func prefetchDataSource(_ prefetchDataSource: UITableViewDataSourcePrefetching?) -> UIBuilder<UITableView> {
        self.view.prefetchDataSource = prefetchDataSource
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    open func insetsContentViewsToSafeArea(_ insetsContentViewsToSafeArea: Bool) -> UIBuilder<UITableView> {
        self.view.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    open func separatorInsetReference(_ separatorInsetReference: UITableView.SeparatorInsetReference) -> UIBuilder<UITableView> {
        self.view.separatorInsetReference = separatorInsetReference
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    open func dragDelegate(_ dragDelegate: UITableViewDragDelegate?) -> UIBuilder<UITableView> {
        self.view.dragDelegate = dragDelegate
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    open func dropDelegate(_ dropDelegate: UITableViewDropDelegate?) -> UIBuilder<UITableView> {
        self.view.dropDelegate = dropDelegate
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    open func dragInteractionEnabled(_ dragInteractionEnabled: Bool) -> UIBuilder<UITableView> {
        self.view.dragInteractionEnabled = dragInteractionEnabled
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func sectionHeaderTopPadding(_ sectionHeaderTopPadding: CGFloat) -> UIBuilder<UITableView> {
        self.view.sectionHeaderTopPadding = sectionHeaderTopPadding
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func fillerRowHeight(_ fillerRowHeight: CGFloat) -> UIBuilder<UITableView> {
        self.view.fillerRowHeight = fillerRowHeight
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func allowsFocusDuringEditing(_ allowsFocusDuringEditing: Bool) -> UIBuilder<UITableView> {
        self.view.allowsFocusDuringEditing = allowsFocusDuringEditing
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func allowsFocus(_ allowsFocus: Bool) -> UIBuilder<UITableView> {
        self.view.allowsFocus = allowsFocus
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func isPrefetchingEnabled(_ isPrefetchingEnabled: Bool) -> UIBuilder<UITableView> {
        self.view.isPrefetchingEnabled = isPrefetchingEnabled
        return self
    }
}
