//
//  UiViewExtension.swift
//  technical-assessment-ios
//
//  Created by yannhuissoud on 10/5/20.
//  Copyright © 2020 yannhuissoud. All rights reserved.
//

import Foundation
import Kingfisher
import UIKit

extension UIImageView {
    func setImage(with urlString: String){
        guard let url = URL.init(string: urlString) else {
            return
        }
        let resource = ImageResource(downloadURL: url, cacheKey: urlString)
        let kf = self.kf
        kf.indicatorType = .activity
        self.kf.setImage(with: resource)
    }
}
