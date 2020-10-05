//
//  File.swift
//  
//
//  Created by Zulwiyoza Putra on 04/10/20.
//

import Foundation
import Publish
import Plot

struct MainHTMLFactory<Site: Website>: HTMLFactory {
    
    func makeIndexHTML(for index: Index, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: index, on: context.site),
            .body(
                .header(for: context, selectedSection: nil),
                .main(
                    .wrapper(
                        .small(
                            .text("Published on \(index.date) by Putra")
                        ),
                        .article(
                            .class("content"),
                            .contentBody(index.content.body)
                        )
                    )
                ),
                
                .footer(for: context)
            )
        )
    }
    
    func makeSectionHTML(for section: Section<Site>, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: section, on: context.site),
            .body(
                .header(for: context, selectedSection: section.id),
                .main(
                    .wrapper(
                        .small(
                            .text("Published on \(section.date) by Putra")
                        ),
                        .article(
                            .class("content"),
                            .contentBody(section.content.body)
                        ),
                        .itemList(for: section.items, on: context.site)
                    )
                ),
                .footer(for: context)
            )
        )
    }
    
    func makeItemHTML(for item: Item<Site>, context: PublishingContext<Site>) throws -> HTML {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateStyle = .medium
        
        var language = context.site.language
        
        if let itemMetadata: SwiftWebsite.ItemMetadata = item.metadata as? SwiftWebsite.ItemMetadata, let itemLanguage = Language(rawValue: itemMetadata.language) {
            language = itemLanguage
        }
        
        return HTML(
            .lang(language),
            .head(for: item, on: context.site),
            .body(
                .header(for: context, selectedSection: item.sectionID),
                .main(
                    .wrapper(
                        .small(
                            .text("Published on \(item.date) by Putra")
                        ),
                        .article(
                            .class("content"),
                            .contentBody(item.body)
                        )
                    )
                ),
                .footer(for: context)
            )
        )
    }
    
    func makePageHTML(for page: Page, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: page, on: context.site),
            .body(
                .header(for: context, selectedSection: nil),
                .main(
                    .wrapper(
                        .small(
                            .text("Published on \(page.date) by Putra")
                        ),
                        .article(
                            .class("content"),
                            .contentBody(page.body)
                        )
                    )
                ),
                .footer(for: context)
            )
        )
    }
    
    func makeTagListHTML(for page: TagListPage, context: PublishingContext<Site>) throws -> HTML? {
        nil
    }
    
    func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<Site>) throws -> HTML? {
        nil
    }
}
