//
//  swift_tutrialApp.swift
//  swift-tutrial
//
//  Created by nakamura yusaku on 2022/12/01.
//

import SwiftUI

@main
struct LandmarksApp: App {
//    StateObjectは一度だけ指定されたプロパティのモデルオブジェクトを初期化することができる
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
