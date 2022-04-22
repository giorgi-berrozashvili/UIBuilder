# UIBuilder

Pack of UIView extensions to simplify creation of UIView and other primary UI classes

## Overview

`UIBuilder` privides SwiftUI style creation of the view, configuring it and returning the created view for iOS projects using UIKit library 

`UIBuilder` class is the main actor in this show, the class takes an instance of any UIView object or UIView.Type and configures according to the later configuration in Builder Pattern style

Here are some examples of the usage and features:

1. Creating a simple view
```Swift
let view = UIBuilder(UIView.self)
    .backgroundColor(.red)
    .frame(CGRect(x: 0, y: 0, width: 100, height: 100))
    .tintColor(.blue)
    .tag(12)
    .view
```

`UIBuilder` takes the type of `UIView`, initializes an `UIView` object, configures backgroundColor, frame, tintColor, tag and finally returns the view object 

2. Creating a popular UIKit subclass of UIView
```Swift
lazy var table = UIBuilder(UITableView.self)
    .delegate(self)
    .dataSource(self)
    .backgroundColor(.lightGray)
    .separatorStyle(.none)
    .view

let stack = UIBuilder(UIStackView.self)
    .translatesAutoresizingMaskIntoConstraints(false)
    .axis(.vertical)
    .alignment(.center)
    .distribution(.fill)
    .spacing(12.0)
    .view
```

`UIBuilder` takes the type of `UITableView` and `UIStackView` objects, configures them and returns the result view

> **_NOTE:_**  `UIBuilder` automatically manages to return same Type as given, so the input and output objects are always the same in compile and runtime


3. `UIBuilder` also supports configuring existing views

```Swift
let button = UIButton()
let configuredButton = UIBuilder(button)
    .title("Tap here")
    .backgroundColor(.red)
    .titleColor(.blue)
    .image(UIImage(named: "hello"))
    .view
```

> **_WARNING:_**  In order to get the final configured view, developer can use `view` property that is the instance of builded object. if the calling of the `view` property is omitted, the result type is `UIBuilder<ViewType>` instead of `ViewType` object

4. `UIBuilder` also supports custom configuration closures for some specific cases

```Swift
let field = UIBuilder(UITextField.self)
    .backgroundColor(.lightText)
    .borderStyle(.roundedRect)
    .delegate(self)
    .layer { layer in
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOffset = CGSize(width: 10, height: 10)
    }.finally { view in
        view.inputView?.backgroundColor = .red
    }
```

In this specific case, `UIBuilder` configures `UITextField`
- `layer(_:)` method takes a non-escaping closure with input parameter typed `CALayer` for UIView.layer configuration
- `finally(_:)` method takes a non-escaping closure with input parameter `view`, so the developer can configure deep hierarchy properties which is not supported by `UIBuilder` library

5. `UIBuilder` provides a simplified way to create hierarchies too

```Swift
let view = UIBuilder(UIView.self)
    .translatesAutoresizingMaskIntoConstraints(false)
    .backgroundColor(.lightText)
    .subView(
        UIBuilder(UIImageView.self)
            .translatesAutoresizingMaskIntoConstraints(false)
            .image(UIImage(named: "landscape"))
            .contentMode(.scaleAspectFit)
            .view, 
        { layout in
            layout.top(12.0).left(16.0).right(16.0).bottom(12.0)
        }
    ).view
```

`subView(_:,_:)` method takes an instance of UIView (which can also be created and configured by the another `UIBuilder` object inline) and closure with input parameter `UILayout` which provides simple layout methods for standard layouts 

Here are the methods of `UILayout`

`top(_:) -> UILayout // takes CGFloat value and arranges topAnchor of subView to the topAnchor of superView with required spacing`

`left(_:) -> UILayout // takes CGFloat value and arranges leadingAnchor of subView to the leadingAnchor of superView with required spacing`

`right(_:) -> UILayout // takes CGFloat value and arranges trailingAnchor of subView to the trailingAnchor of superView with required spacing`

`bottom(_:) -> UILayout // takes CGFloat value and arranges bottomAnchor of subView to the bottomAnchor of superView with required spacing`

`padding(_:) -> UILayout // takes CGFloat value and creates allsided padding, i.e. calls four above-mentioned methods 

`center(_:) -> UILayout // takes NSLayoutConstraint.Axis parameter and centers the subView to the superView according to axis (uses centerX and centerY anchors)

> **_WARNING:_**  UILayout uses layout constraints and anchors for arrangement, but for more simplification anchors like trailing and bottom are automatically trated as a negative values, i.e. bottom(16.0) means that the subView's bottomAnchor is aligned with (-16.0) space from superView's bottomAnchor

`UILayout` holds public properties - superView and subView under the hood so the developer can create further configurations with superView and subView

6. In addition to single view hierarchy configuration, `UIBuilder` supports addition of the multiple views in a single try

```Swift
let view = UIBuilder(UIView.self)
    .translatesAutoresizingMaskIntoConstraints(false)
    .backgroundColor(.lightText)
    .subView(
        UIBuilder(UISwitch.self)
            .translatesAutoresizingMaskIntoConstraints(false)
            .isOn(false)
            .onTintColor(.orange)
            .view,
        UIBuilder(UILabel.self)
            .translatesAutoresizingMaskIntoConstraints(false)
            .text("subtitle")
            .textColor(.blue)
            .view)
    { layout in
        layout.alignHorizontally(
            left: 16.0,
            spacing: 8.0,
            right: 16.0,
            top: 4.0,
            bottom: 4.0
        )
    }
```

In case of addition two views, `UILayout` is turned into `UILayoutDouble` class so it supports two subViews, and provides three basic configuration group: Vertical alignment, Horizontal alignment and z index alignment for overlapping views. Each of the group has own specific methods to arrange two views and supports almost all the cases that can be required when creating a standard UI

In case of addition multiple views at once, UILayout is no longer supported as it becomes much more complicated and practically cannot support all the cases, so the user gets the list of subViews and can do any kind of configuration with native constraint & anchor configurations


## Support

UIBuilder supports iOS 9 and higher versions, but certain properties require higher version if the project deployment target doesn't support them

## Installing UIBuilder

UIBuilder supports Swift Package Manager

```Swift
// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "UIBuilder",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "UIBuilder",
            targets: ["UIBuilder"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "UIBuilder",
            dependencies: []
        )
    ]
)
```

Finally import to the swift file: `import UIBuilder`

Berrium © 2022


