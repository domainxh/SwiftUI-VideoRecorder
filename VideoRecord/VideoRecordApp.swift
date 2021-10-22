//
//  VideoRecordApp.swift
//  VideoRecord
//
//  Created by Xiaoheng Pan on 10/22/21.
//

import SwiftUI

@main
struct VideoRecordApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(viewModel: HomeViewModel())
        }
    }
}
