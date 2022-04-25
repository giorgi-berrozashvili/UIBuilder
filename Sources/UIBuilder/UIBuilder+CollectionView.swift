//
//  UIBuilder+CollectionView.swift
//  Created by Berrium on 16.04.22.
//

import UIKit

extension UIBuilder where ViewType == UICollectionView {
    @discardableResult
    open func delegate(_ delegate: UICollectionViewDelegate?) -> UIBuilder<UICollectionView> {
        self.view.delegate = delegate
        return self
    }
    
    @discardableResult
    open func dataSource(_ dataSource: UICollectionViewDataSource?) -> UIBuilder<UICollectionView> {
        self.view.dataSource = dataSource
        return self
    }
    
    @discardableResult
    open func backgroundView(_ backgroundView: UIView?) -> UIBuilder<UICollectionView> {
        self.view.backgroundView = backgroundView
        return self
    }
    
    @discardableResult
    open func collectionViewLayout(_ collectionViewLayout: UICollectionViewLayout) -> UIBuilder<UICollectionView> {
        self.view.collectionViewLayout = collectionViewLayout
        return self
    }
    
    @discardableResult
    open func allowsSelection(_ allowsSelection: Bool) -> UIBuilder<UICollectionView> {
        self.view.allowsSelection = allowsSelection
        return self
    }
    
    @discardableResult
    open func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> UIBuilder<UICollectionView> {
        self.view.allowsMultipleSelection = allowsMultipleSelection
        return self
    }
    
    @discardableResult
    open func remembersLastFocusedIndexPath(_ remembersLastFocusedIndexPath: Bool) -> UIBuilder<UICollectionView> {
        self.view.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    open func dragInteractionEnabled(_ dragInteractionEnabled: Bool) -> UIBuilder<UICollectionView> {
        self.view.dragInteractionEnabled = dragInteractionEnabled
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    open func dragDelegate(_ dragDelegate: UICollectionViewDragDelegate?) -> UIBuilder<UICollectionView> {
        self.view.dragDelegate = dragDelegate
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    open func dropDelegate(_ dropDelegate: UICollectionViewDropDelegate?) -> UIBuilder<UICollectionView> {
        self.view.dropDelegate = dropDelegate
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    open func reorderingCadence(_ reorderingCadence: UICollectionView.ReorderingCadence) -> UIBuilder<UICollectionView> {
        self.view.reorderingCadence = reorderingCadence
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func isEditing(_ isEditing: Bool) -> UIBuilder<UICollectionView> {
        self.view.isEditing = isEditing
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func allowsSelectionDuringEditing(_ allowsSelectionDuringEditing: Bool) -> UIBuilder<UICollectionView> {
        self.view.allowsSelectionDuringEditing = allowsSelectionDuringEditing
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    open func allowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing: Bool) -> UIBuilder<UICollectionView> {
        self.view.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func allowsFocus(_ allowsFocus: Bool) -> UIBuilder<UICollectionView> {
        self.view.allowsFocus = allowsFocus
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    open func allowsFocusDuringEditing(_ allowsFocusDuringEditing: Bool) -> UIBuilder<UICollectionView> {
        self.view.allowsFocusDuringEditing = allowsFocusDuringEditing
        return self
    }
}
