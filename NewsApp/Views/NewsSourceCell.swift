//
//  NewsSourceCell.swift
//  NewsApp
//
//  Created by Kay Zin Thaw on 8/12/22.
//

import SwiftUI

struct NewsSourceCell: View {
    //MARK: - PROPERTY
    let newsSource: NewsSourceViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text(newsSource.name)
                .font(.headline)
            Text(newsSource.description)
        }//VSTACK
    }
}

struct NewsSourceCell_Previews: PreviewProvider {
    static var previews: some View {
        NewsSourceCell(newsSource: NewsSourceViewModel.default)
    }
}
