//
//  CircleImage.swift
//  swift-tutrial
//
//  Created by nakamura yusaku on 2022/12/01.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("simaenaga")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 2)
            }
            .shadow(radius: 5)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
