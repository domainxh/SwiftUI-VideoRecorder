//
//  MainView.swift
//  VideoRecord
//
//  Created by Xiaoheng Pan on 10/22/21.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Button {
                    viewModel.showPhotoLibrary.toggle()
                } label: {
                    Text(viewModel.playVideoText)
                }
                
                Spacer().frame(height: 16)
                
                Button {
                    viewModel.isVideoRecordingPresented.toggle()
                } label: {
                    Text(viewModel.saveVideoText)
                }
                    
                NavigationLink(
                    destination: VideoView(viewModel: VideoPlayerViewModel(url: viewModel.videoURL)),
                    isActive: $viewModel.isVideoPreviewPresented
                ) { EmptyView() }
            }
            .navigationTitle(viewModel.navigationTitle)
            .sheet(isPresented: $viewModel.showPhotoLibrary, onDismiss: {
                viewModel.isVideoPreviewPresented = true
            }, content: {
                ImagePicker(url: $viewModel.videoURL, sourceType: .savedPhotosAlbum)
            })
            .fullScreenCover(isPresented: $viewModel.isVideoRecordingPresented) {
                ImagePicker(url: $viewModel.videoURL, sourceType: .camera).edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}
