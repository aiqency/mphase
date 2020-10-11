//
//  UiTableViewExtension.swift
//  technical-assessment-ios
//
//  Created by yannhuissoud on 10/11/20.
//  Copyright © 2020 yannhuissoud. All rights reserved.
//

import UIKit

extension UITableView {
    
    func showAsEmpty() {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        label.set(image: "icons8-swipe-down-50", with: "No data\nSwipe down to refresh")
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        label.sizeToFit()
        
        self.backgroundView = label
        self.separatorStyle = .none
    }
    
    func undoEmptyState() {
        self.backgroundView = nil
        self.separatorStyle = .singleLine
    }
}
