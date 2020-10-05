//
//  Article.swift
//  technical-assessment-ios
//
//  Created by yannhuissoud on 10/4/20.
//  Copyright © 2020 yannhuissoud. All rights reserved.
//

struct Article: Codable {
    let id, title: String
    let tags: [Tag]
    let thumbnail: Thumbnail
    let publishedAt: String
}

struct Tag: Codable {
    let name, slug: String
}

struct Thumbnail: Codable {
    let url: String
}

typealias Articles = [Article]
