//
//  ArticleView.swift
//  
//
//  Created by Arturo Lee on 1/31/23.
//

import SwiftUI
import MarkdownUI

public struct ArticleView: View {
    let article: Article
    
    public init(article: Article) {
        self.article = article
    }
    
    public var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                image
                Markdown(article.markdownContent)
                    .padding()
            }
        }
        .navigationTitle(article.navigationTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    var image: some View {
        Group {
            if let url = article.imageUrl {
                AsyncImage(url: url) { image in
                    image.articleImageModifier()
                } placeholder: {
                    ProgressView()
                }
            } else if let imageName  = article.imageName {
                Image(imageName).articleImageModifier()
            } else {
                EmptyView()
            }
        }
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ArticleView(article: exampleArticle).tint(.blue)
        }
    }
}
