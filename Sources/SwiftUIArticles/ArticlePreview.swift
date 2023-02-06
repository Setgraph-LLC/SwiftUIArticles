//
//  ArticlePreview.swift
//  
//
//  Created by Arturo Lee on 1/31/23.
//

import SwiftUI
import MarkdownUI

public struct ArticlePreview: View {
    var article: Article
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ArticleImageView(article: article, preview: true)
            Group {
                Text(article.title)
                    .font(.title2.bold()) + Text("\n") +
                Text(article.previewDescription)
            }.padding(.horizontal)
            .padding(.top)
        }
        .padding(.bottom)
        .listRowInsets(EdgeInsets())
    }
}

struct ArticlePreview_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                ArticlePreview(article: exampleArticle)
            }
        }.previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max"))
    }
}
