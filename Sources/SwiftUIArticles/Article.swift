import SwiftUI
import MarkdownUI

public struct Article {
    public let title: String
    public let previewDescription: String
    public let navigationTitle: String
    public let imageUrl: URL?
    public let imageName: String?
    public let markdownContent: MarkdownContent
    
    public init(title: String, previewDescription: String, navigationTitle: String, imageUrl: URL? = nil, imageName: String? = nil, markdownContent: MarkdownContent) {
        self.title = title
        self.previewDescription = previewDescription
        self.navigationTitle = navigationTitle
        self.imageUrl = imageUrl
        self.imageName = imageName
        self.markdownContent = markdownContent
    }
}

var exampleArticle = Article(title: "Understanding SwiftUIArticles", previewDescription: "Using articles in your projects.", navigationTitle: "SwiftUIArticles",
                             imageUrl: URL(string: "https://i0.wp.com/shinesolutions.com/wp-content/uploads/2021/08/1024.jpeg?fit=1024%2C576&ssl=1"), markdownContent: MarkdownContent("""
          # Understanding SwiftUIArticles
          
          **MarkdownUI** is a native Markdown renderer for SwiftUI
          compatible with the
          [GitHub Flavored Markdown Spec](https://github.github.com/gfm/).
          
          **SwiftUIArticles** uses MarkdownUI to create an UI for articles. It takes inspiration from the Apple Health app articles. In keeping with that theme, horizontal images work best. The preview image's height will be slightly shorter than the full article image.
          
          Create your content using the Article struct and feed it into the views you want to use.
          
          ## ArticlePreview
          **ArticlePreview** can be used to preview the content of your article.
          
          ## ArticleView
          **ArticleView** is the where the full content of the article can be seen. Feel free to use it in a navigation view or a sheet.
          """))
