//
//  HomeViewModel.swift
//  VideoRecord
//
//  Created by Xiaoheng Pan on 10/22/21.
//

import SwiftUI
import AVFoundation

class HomeViewModel: ObservableObject {
    
    let playVideoText = "Select & Play Video"
    let saveVideoText = "Record & Save Video"
    let navigationTitle = "Home"
    
    @Published var showPhotoLibrary = false
    @Published var isVideoPreviewPresented = false
    @Published var isVideoRecordingPresented = false
    @Published var videoURL: URL?
}
