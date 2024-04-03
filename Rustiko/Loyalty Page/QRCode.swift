//
//  QRCode.swift
//  Rustiko
//
//  Created by Mich balkany on 4/3/24.
//

import SwiftUI
import CoreImage

struct QRCodeImage: View {
    let dataString: String // holds the data that needs to be encoded into a QR code.
    
    var body: some View {
        Image(uiImage: codeImage(data: dataString.data(using: .utf8)))
            .interpolation(.none)
            .resizable()
            .scaledToFit()
    }
    
    func codeImage(data: Data?) -> UIImage {
        let fallback = UIImage()
        
        guard data != nil,
              !(data!.isEmpty),
              let filter = CIFilter(name: "CIQRCodeGenerator") else { return fallback }
        
        filter.setValue(data!, forKey: "inputMessage")
        
        guard let outputImage = filter.outputImage,
              let image = CIContext().createCGImage(outputImage, from: outputImage.extent) else { return fallback }
        
        return UIImage(cgImage: image)
    }
}


//  this code combines SwiftUI and CoreImage to create a SwiftUI view that displays a QR code image generated from the provided string data
