//
//  SwiftWebsite.swift
//  
//
//  Created by Zulwiyoza Putra on 04/10/20.
//

import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct SwiftWebsite: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case pedoman
        case rujukan
        case revisi
        case swift
        case pemasangan
    }
    
    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
        let language: String
    }
    
    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "Bahasa Pemrograman Swift"
    var description = "A description of BahasaPemrogramanSwift"
    var language: Language { .indonesian }
    var imagePath: Path? { nil }
}
