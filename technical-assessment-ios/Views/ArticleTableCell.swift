//
//  EventTableCell.swift
//  technical-assessment-ios
//
//  Created by yannhuissoud on 10/4/20.
//  Copyright © 2020 yannhuissoud. All rights reserved.
//

import Foundation
import UIKit
import TagListView


class ArticleTableCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var tagList: ArticleTagListView!
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var date: UILabel!
    
}
