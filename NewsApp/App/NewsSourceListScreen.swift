//
//  NewsSourceListScreen.swift
//  NewsApp
//
//  Created by Kay Zin Thaw on 7/12/22.
//

import SwiftUI

struct NewsSourceListScreen: View {
    //MARK: - PROPERTY
    @StateObject private var newsSourceListViewModel = NewsSourceListViewModel()
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List(newsSourceListViewModel.newSources, id: \.id) {
                newSource in
                NavigationLink(destination: NewsListScreen(newsSource: newSource)) {
                    NewsSourceCell(newsSource: newSource)
                }
            }//list
            .listStyle(.plain)
            .onAppear{
                newsSourceListViewModel.getSources()
            }
            .navigationTitle("New Sources")
            .navigationBarItems(trailing: Button(action: {
                // refresh the news
            }, label: {
                Image(systemName: "arrow.clockwise.circle")
            }))
        }//navgation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NewsSourceListScreen()
    }
}
