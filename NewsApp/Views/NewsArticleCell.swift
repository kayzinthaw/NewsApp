//
//  NewsArticleCell.swift
//  NewsApp
//
//  Created by Kay Zin Thaw on 8/12/22.
//

import SwiftUI

struct NewsArticleCell: View {
    //MARK: - PROPERTY
    let newsArticle: NewsArticleViewModel
    
    var body: some View {
        
        HStack(alignment: .top){
            AsyncImage(url: newsArticle.urlToImage){
                image in
                image.resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
            } placeholder: {
                ProgressView("Loading...")
                    .frame(maxWidth: 100, maxHeight: 100)
            }
            VStack(alignment: .leading, spacing: 10){
                Text(newsArticle.title)
                    .fontWeight(.bold)
                Text(newsArticle.description)
            }
        }//HSATCK
        
    }
}

