# UIBuilder

Pack of UIView extensions to simplify creation of UIView and other primary UI classes

## Overview

UIBuilder 1.0 privides SwiftUI style creation of the view, configuring it and returning the created view

```Swift
let view = UIBuilder(UIView.self)
    .backgroundColor(.red)
    .frame(CGRect(x: 0, y: 0, width: 100, height: 100))
    .tintColor(.blue)
    .tag(12)
    .view

let table = UIBuilder(UITableView.self)
    .delegate(self)
    .dataSource(self)
    .backgroundColor(.lightGray)
    .separatorStyle(.none)
    .view

let stack = UIBuilder(UIStackView.self)
    .translateAutoResizingMasksIntoConstraints(false)
    .axis(.vertical)
    .alignment(.center)
    .distribution(.fill)
    .spacing(12.0)
    .view

```

UIBuilder also supports configuring existing views

```Swift
let button = UIButton()
let configuredButton = UIBuilder(button)
    .title("Tap here")
    .backgroundColor(.red)
    .titleColor(.blue)
    .image(UIImage(named: "hello"))
    .view
```

## Support

UIBuilder supports iOS 9 and higher versions, but certain properties require higher version if the project deployment target doesn't support them

Berrium © 2022

