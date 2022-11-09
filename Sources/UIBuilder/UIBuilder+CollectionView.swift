//
//  UIBuilder+CollectionView.swift
//  Created by Berrium on 16.04.22.
//

import UIKit

extension UIBuilder where ViewType: UICollectionView {
    @discardableResult
    public func delegate(_ delegate: UICollectionViewDelegate?) -> UIBuilder {
        self.view.delegate = delegate
        return self
    }
    
    @discardableResult
    public func dataSource(_ dataSource: UICollectionViewDataSource?) -> UIBuilder {
        self.view.dataSource = dataSource
        return self
    }
    
    @discardableResult
    public func backgroundView(_ backgroundView: UIView?) -> UIBuilder {
        self.view.backgroundView = backgroundView
        return self
    }
    
    @discardableResult
    public func collectionViewLayout(_ collectionViewLayout: UICollectionViewLayout) -> UIBuilder {
        self.view.collectionViewLayout = collectionViewLayout
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
    public func remembersLastFocusedIndexPath(_ remembersLastFocusedIndexPath: Bool) -> UIBuilder {
        self.view.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func dragInteractionEnabled(_ dragInteractionEnabled: Bool) -> UIBuilder {
        self.view.dragInteractionEnabled = dragInteractionEnabled
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func dragDelegate(_ dragDelegate: UICollectionViewDragDelegate?) -> UIBuilder {
        self.view.dragDelegate = dragDelegate
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func dropDelegate(_ dropDelegate: UICollectionViewDropDelegate?) -> UIBuilder {
        self.view.dropDelegate = dropDelegate
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func reorderingCadence(_ reorderingCadence: UICollectionView.ReorderingCadence) -> UIBuilder {
        self.view.reorderingCadence = reorderingCadence
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    public func isEditing(_ isEditing: Bool) -> UIBuilder {
        self.view.isEditing = isEditing
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    public func allowsSelectionDuringEditing(_ allowsSelectionDuringEditing: Bool) -> UIBuilder {
        self.view.allowsSelectionDuringEditing = allowsSelectionDuringEditing
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    public func allowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing: Bool) -> UIBuilder {
        self.view.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing
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
    public func allowsFocusDuringEditing(_ allowsFocusDuringEditing: Bool) -> UIBuilder {
        self.view.allowsFocusDuringEditing = allowsFocusDuringEditing
        return self
    }
}
