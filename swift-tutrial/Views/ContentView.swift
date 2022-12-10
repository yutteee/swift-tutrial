//
//  ContentView.swift
//  swift-tutrial
//
//  Created by nakamura yusaku on 2022/12/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//    eniviromentObjectを持っていないviewでもプレビューできるようにするためのもの
            .environmentObject(ModelData())
    }
}
