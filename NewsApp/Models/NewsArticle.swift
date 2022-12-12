//
//  NewsArticle.swift
//  NewsApp
//
//  Created by Kay Zin Thaw on 8/12/22.
//

import Foundation
struct NewsArticleResponse: Decodable {
    let articles: [NewsArticle]
}

struct NewsArticle: Decodable {
    let author: String?
    let title: String
    let description: String?
    let url: String?
    let content: String?
    let publishedAt: String
    let urlToImage: String?
}
