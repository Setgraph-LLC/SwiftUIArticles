//
//  SwiftUIView.swift
//  
//
//  Created by Arturo Lee on 2/6/23.
//

import SwiftUI

struct ArticleImageView: View {
    let article: Article
    var preview: Bool = false
    
    var body: some View {
        if let url = article.imageUrl {
            AsyncImage(url: url) { image in
                image.articleImageModifier(preview: preview)
            } placeholder: {
                ProgressView()
            }
        } else if let imageName  = article.imageName {
            Image(imageName).articleImageModifier(preview: preview)
        } else {
            EmptyView()
        }
    }
}

extension Image {
    func articleImageModifier(preview: Bool = false) -> some View {
        self
            .resizable()
            .scaledToFill()
            .frame(maxHeight: preview ? 200 : 300)
            .clipped()
   }
}

struct ArticleImageView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleImageView(article: exampleArticle)
    }
}
