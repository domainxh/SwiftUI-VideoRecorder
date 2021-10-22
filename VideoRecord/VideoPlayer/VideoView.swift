//
//  VideoView.swift
//  VideoRecord
//
//  Created by Xiaoheng Pan on 10/22/21.
//

import SwiftUI
import AVKit

struct VideoView: View {
    @ObservedObject var viewModel: VideoPlayerViewModel
    
    var body: some View {
        VideoPlayer(player: AVPlayer(url: viewModel.urlPath!))
    }
}
