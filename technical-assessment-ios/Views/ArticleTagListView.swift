//
//  ArticleTagList.swift
//  technical-assessment-ios
//
//  Created by yannhuissoud on 10/4/20.
//  Copyright © 2020 yannhuissoud. All rights reserved.
//

import Foundation
import TagListView

class ArticleTagListView: TagListView {
    
    private let themeColors : [String:MTag] = [
        "Arts" : MTag(bg: 0x094074),
        "Business": MTag(bg: 0xEE4266),
        "Health": MTag(bg: 0xFB5607),
        "Local": MTag(bg: 0xFFD23F, textColor: UIColor.black),
        "News": MTag(bg: 0x91C4F2, textColor: UIColor.black),
        "Sports": MTag(bg: 0x1B998B),
        "World": MTag(bg: 0x8338EC)
    ]
    
    // TODO: can't find how to disable tag selection?
    func updateArticleTags(tags: [Tag]) {
        removeAllTags()
        tags.forEach { tag in
            let tagView = addTag(tag.name)
            let mtag = themeColors[tag.name]!
            tagView.textColor = mtag.textColor
            tagView.backgroundColor = UIColor(rgb: mtag.bg)
        }
    }
    
    private class MTag {
        let bg: UInt
        let textColor: UIColor
        
        init(bg: UInt, textColor: UIColor = UIColor.white) {
            self.bg = bg
            self.textColor = textColor
        }
    }
}
