//
//  VideoPreviewData.swift
//  TestFlight Test Project
//
//  Created by Roman Esin on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import Foundation

struct VideoPreviewData {
    let title: String
    let previewLink: String
    let name: String
    let iconLink: String
    let viewCount: String
    
    /// Standard initializer for preview data
    /// - Parameters:
    ///     - title: Video title
    ///     - previewLink: String URL to video preview image
    ///     - name: Name of the channel that owns the video
    ///     - iconLink: String URL to icon of channel
    ///     - viewCount: String describing view count of the video
    init(title t: String, previewLink link: String, name n: String, iconLink iLink: String, viewCount vc: String) {
        title = t
        previewLink = link
        name = n
        iconLink = iLink
        viewCount = vc
    }
}
