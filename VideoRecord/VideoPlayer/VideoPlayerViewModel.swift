//
//  VideoPlayerViewModel.swift
//  VideoRecord
//
//  Created by Xiaoheng Pan on 10/22/21.
//

import SwiftUI

class VideoPlayerViewModel: ObservableObject {
    @Published var urlPath: URL?
    
    init(url: URL?) {
        self.urlPath = url
    }
}
