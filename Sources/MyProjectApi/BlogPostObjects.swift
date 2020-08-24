//
//  BlogPostObjects.swift
//  
//
//  Created by funcamakerDan on 8/21/20.
//

import Foundation

public struct BlogPostListObject: Codable {
    public let id: UUID
    public let title: String
    public let slug: String
    public let image: String
    public let excerpt: String
    public let date: Date
    public let viewCount: Int
    
    public init(id: UUID, title: String, slug: String, image: String, excerpt: String, date: Date, viewCount: Int) {
        self.id = id
        self.title = title
        self.slug = slug
        self.image = image
        self.excerpt = excerpt
        self.date = date
        self.viewCount = viewCount
    }
}

public struct BlogPostGetObject: Codable {
    public var id: UUID
    public var title: String
    public var slug: String
    public var image: String
    public var excerpt: String
    public var date: Date
    public var viewCount: Int
    public var content: String
    
    public init(id: UUID, title: String, slug: String, image: String, excerpt: String, date: Date, viewCount: Int, content: String) {
        self.id = id
        self.title = title
        self.slug = slug
        self.image = image
        self.excerpt = excerpt
        self.date = date
        self.viewCount = viewCount
        self.content = content
    }
}

//8.22.2020 DV: added imagekey so I could API post an image URL and it would generate an image key

public struct BlogPostUpsertObject: Codable {
    public var title: String
    public var slug: String
    public var image: String
    public var excerpt: String
    public var date: Date
    public var content: String
    public var viewCount: Int
    public var categoryId: String
    
    public init(title: String, slug: String, image: String, excerpt: String, date: Date, content: String, viewCount: Int, categoryId: String) {
           self.title = title
           self.slug = slug
           self.image = image
           self.excerpt = excerpt
           self.date = date
           self.content = content
           self.viewCount = viewCount
           self.categoryId = categoryId
       }
}





public struct BlogPostPatchObject: Codable {
    public var title: String?
    public var slug: String?
    public var image: String?
    public var excerpt: String?
    public var date: Date?
    public var viewCount: Int?
    public var categoryId: String?
    public var content: String?
    
    public init(title: String? = nil, slug: String? = nil, image: String? = nil, excerpt: String? = nil, date: Date? = nil, viewCount: Int? = nil, categoryId: String? = nil, content: String?) {
           self.title = title
           self.slug = slug
           self.image = image
           self.excerpt = excerpt
           self.date = date
           self.viewCount = viewCount
           self.categoryId = categoryId
           self.content = content
       }
}





