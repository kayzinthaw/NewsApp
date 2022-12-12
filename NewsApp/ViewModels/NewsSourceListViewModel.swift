//
//  NewsSourceListViewModel.swift
//  NewsApp
//
//  Created by Kay Zin Thaw on 7/12/22.
//

import Foundation
class NewsSourceListViewModel: ObservableObject {
    
    @Published var newSources: [NewsSourceViewModel] = []
    
    func getSources() {
        
        WebService().fetchSources(url: Constants.Urls.sources) { result in
            switch result {
            case .success(let newSources):
                DispatchQueue.main.async {
                    self.newSources = newSources.map(NewsSourceViewModel.init)
                }
            case .failure(let error):
                print(error)
            }
        
        }
    }
}

struct NewsSourceViewModel {
    
    fileprivate var newsSource: NewsSource
    
    var id: String {
        newsSource.id
    }
    
    var name: String {
        newsSource.name
    }
    
    var description: String {
        newsSource.description
    }
    
    static var `default`: NewsSourceViewModel{
        let newsSource = NewsSource(id: "abc-news", name: "ABC News", description: "This is ABC news")
        return NewsSourceViewModel(newsSource: newsSource)
    }
}

