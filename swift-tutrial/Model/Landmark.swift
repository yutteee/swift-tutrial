import Foundation
import SwiftUI
import CoreLocation

//Codable conformanceを追加することで後々データのやり取りが簡単になる
//LandmarkListで回すfor文的な部分のkey属性を指定しなくていい
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
//  宣言内のみでしかアクセスできないのがprivate。変更されたくないものに使う
    private var imageName: String
//  Imageはassetsから画像を読み込むための標準？のもの
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
//  MapKitとのやり土地に使うlocationCoordinateを呼び出す
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
//  Coodinateは座標プロパティを追加するためのもの
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}
