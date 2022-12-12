//
//  Constant.swift
//  NewsApp
//
//  Created by Kay Zin Thaw on 7/12/22.
//

import Foundation

struct Constants {
    struct Urls {
        
        static func topHeadlines(by source: String) -> URL? {
            return URL(string: "https://newsapi.org/v2/top-headlines?sources=\(source)&apiKey=ef9fe0bb68d6493bb4c51c0f2eb19dc5")
        }
        
        static let sources: URL? = URL(string: "https://newsapi.org/v2/sources?apiKey=ef9fe0bb68d6493bb4c51c0f2eb19dc5")
    }
}
