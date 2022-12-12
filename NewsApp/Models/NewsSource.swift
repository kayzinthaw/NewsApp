//
//  NewsSource.swift
//  NewsApp
//
//  Created by Kay Zin Thaw on 7/12/22.
//

import Foundation
struct NewsSourceResponse: Decodable {
    let sources: [NewsSource]
}
struct NewsSource: Decodable {
    let id: String
    let name: String
    let description: String
}
