//
//  NewsListScreen.swift
//  NewsApp
//
//  Created by Kay Zin Thaw on 8/12/22.
//

import SwiftUI

struct NewsListScreen: View {
    // MARK: - PROPERTY
    let newsSource: NewsSourceViewModel
    @StateObject private var newsArticleListViewModel = NewsArticleListViewModel()
    var body: some View {
        NavigationView {
            List(newsArticleListViewModel.newsArticles, id: \.id) {
                newsArticle in
                NewsArticleCell(newsArticle: newsArticle)
            }//list
            .listStyle(.plain)
            .onAppear{
                newsArticleListViewModel.getNewsBy(sourceId: newsSource.id)
            }
            .navigationTitle(newsSource.name)
        }//Navigation
        
    }
}

struct NewsListScreen_Previews: PreviewProvider {
    static var previews: some View {
        NewsListScreen(newsSource: NewsSourceViewModel.default)
    }
}
