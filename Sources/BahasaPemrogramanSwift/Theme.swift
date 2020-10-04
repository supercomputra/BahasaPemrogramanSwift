//
//  Theme+Main.swift
//  
//
//  Created by Zulwiyoza Putra on 04/10/20.
//

import Foundation
import Publish
import Plot

extension Node where Context == HTML.DocumentContext {
    /// Add an HTML `<head>` tag within the current context, based
    /// on inferred information from the current location and `Website`
    /// implementation.
    /// - parameter location: The location to generate a `<head>` tag for.
    /// - parameter site: The website on which the location is located.
    /// - parameter titleSeparator: Any string to use to separate the location's
    ///   title from the name of the website. Default: `" | "`.
    /// - parameter stylesheetPaths: The paths to any stylesheets to add to
    ///   the resulting HTML page. Default: `styles.css`.
    /// - parameter rssFeedPath: The path to any RSS feed to associate with the
    ///   resulting HTML page. Default: `feed.rss`.
    /// - parameter rssFeedTitle: An optional title for the page's RSS feed.
    static func head<T: Website>(
        for location: Location,
        on site: T,
        titleSeparator: String = " | ",
        stylesheetPaths: [Path] = ["/styles.css"],
        rssFeedPath: Path? = .defaultForRSSFeed,
        rssFeedTitle: String? = nil
    ) -> Node {
        var title = location.title
        if title.isEmpty {
            title = site.name
        } else {
            title.append(titleSeparator + site.name)
        }
        
        var description = location.description
        if description.isEmpty {
            description = site.description
        }
        
        return .head(
            .encoding(.utf8),
            .siteName(site.name),
            .url(site.url(for: location)),
            .title(title),
            .description(description),
            .twitterCardType(location.imagePath == nil ? .summary : .summaryLargeImage),
            .googleFontsPreconnect(),
            .googleFontsPrefetch(),
            .googleFonts(),
            .forEach(stylesheetPaths, { .stylesheet($0) }),
            .viewport(.accordingToDevice),
            .unwrap(site.favicon, { .favicon($0) }),
            .unwrap(rssFeedPath, { path in
                let title = rssFeedTitle ?? "Subscribe to \(site.name)"
                return .rssFeedLink(path.absoluteString, title: title)
            }),
            .unwrap(location.imagePath ?? site.imagePath, { path in
                let url = site.url(for: path)
                return .socialImageLink(url)
            })
        )
    }
}

extension Node where Context == HTML.HeadContext {
    static func googleFontsPrefetch() -> Node {
        .link(
            .rel(
                .dnsPrefetch
            ),
            .href("https://fonts.googleapis.com")
        )
    }
    
    static func googleFontsPreconnect() -> Node {
        .link(
            .rel(
                .preconnect
            ),
            .href("https://fonts.gstatic.com/"),
            .attribute(named: "crossorigin", value: "true")
        )
    }
    
    static func googleFonts() -> Node {
        .link(
            .rel(
                .stylesheet
            ),
            .href("https://fonts.googleapis.com/css2?family=Lato:wght@400;700;900&Open+Sans:ital@0;1&family=Roboto+Slab:wght@600&display=swap")
        )
    }
}

extension Node where Context == HTML.BodyContext {
    /// Add a `<small>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func small(_ nodes: Node<HTML.BodyContext>...) -> Node {
        .element(named: "small", nodes: nodes)
    }
    
    static func wrapper(_ nodes: Node...) -> Node {
        .div(.class("wrapper"), .group(nodes))
    }
    
    static func itemList<T: Website>(
        for items: [Item<T>],
        on site: T
    ) -> Node {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return .ul(
            .class("item-list"),
            .forEach(items) { item in
                .li(
                    .article(
                        .h1(
                            .a(
                                .href(item.path),
                                .text(item.title)
                            )
                        ),
                        .p(
                            .text("\(item.description).."),
                            .a(
                                .class("read-more-link"),
                                .href(item.path),
                                .text(" read more")
                            )
                        ),
                        .small(
                            .a (
                                .href(item.path),
                                .text("Published on \(formatter.string(from: item.date)) by Putra")
                            )
                        )
                    )
                )
            }
        )
    }
    
    static func header<T: Website>(
        for context: PublishingContext<T>,
        selectedSection: T.SectionID?
    ) -> Node {
        let sectionIDs = T.SectionID.allCases
        
        return .header(
            .wrapper(
                .a(
                    .class("site-name"),
                    .href("/"),
                    .h1("\(context.site.name)")
                ),
                .if(sectionIDs.count > 1,
                    .nav(
                        .class("sections"),
                        .ul(
                            .li(.a(
                                .class((selectedSection == nil) ? "selected" : ""),
                                .href("/"),
                                .text("Beranda")
                            )),
                            .forEach(sectionIDs) { section in
                                .li(.a(
                                    .class(section == selectedSection ? "selected" : ""),
                                    .href(context.sections[section].path),
                                    .text(context.sections[section].title)
                                ))
                            })
                    )
                )
            )
        )
    }
    
    static func footer<Site: Website>(for context: PublishingContext<Site>) -> Node {
        let date: Date = Date()
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        
        return .footer(
            .wrapper(
                .small("Copyright © Putra \(year)"),
                .small(
                    .text("Generated by "),
                    .a(
                        .href("https://github.com/apple/swift"),
                        .text("Swift")
                    ),
                    .text(" using "),
                    .a(
                        .href("https://github.com/JohnSundell/Publish"),
                        .text("Publish")
                    ),
                    .text(". 100% Javascript Free.")
                )
            )
        )
    }
}

extension Theme {
    static var main: Theme {
        Theme(htmlFactory: MainHTMLFactory(), resourcePaths: ["Resources/MainTheme/styles.css"])
    }
}
