//
//  UiLabelExtensions.swift
//  technical-assessment-ios
//
//  Created by yannhuissoud on 10/11/20.
//  Copyright © 2020 yannhuissoud. All rights reserved.
//

import UIKit

extension UILabel {
    func set(image: String, with text: String) {
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named:image)
        // Set bound to reposition
        let imageOffsetY: CGFloat = -5.0
        imageAttachment.bounds = CGRect(x: imageOffsetY, y: 0, width: imageAttachment.image!.size.width, height: imageAttachment.image!.size.height)
        // Create string with attachment
        let attachmentString = NSAttributedString(attachment: imageAttachment)
        // Initialize mutable string
        let completeText = NSMutableAttributedString(string: "")
        // Add image to mutable string
        completeText.append(attachmentString)
        // Add your text to mutable string
        let textAfterIcon = NSAttributedString(string: "\n\(text)")
        completeText.append(textAfterIcon)
        self.textAlignment = .center
        self.attributedText = completeText
    }
}
