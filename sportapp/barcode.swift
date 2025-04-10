//
//  barcode.swift
//  sportapp
//
//  Created by noor alotibi on 23/9/1446 AH.
//

import SwiftUI
import CoreImage.CIFilterBuiltins

struct barcode: View {
    @State private var barcodeData: String = UUID().uuidString
    private let timer = Timer.publish(every: 30, on: .main, in: .common).autoconnect()

    var body: some View {
        VStack {
            if let qrImage = generateQRCode(from: barcodeData) {
                Image(uiImage: qrImage)
                    .resizable()
                    .interpolation(.none)
                    .scaledToFit()
                    .frame(width: 80, height: 200)
            }
        }
        .onReceive(timer) { _ in
            barcodeData = UUID().uuidString
        }
    }

    func generateQRCode(from string: String) -> UIImage? {
        let context = CIContext()
        let filter = CIFilter.qrCodeGenerator()
        filter.message = Data(string.utf8)

        if let outputImage = filter.outputImage {
            let transformedImage = outputImage.transformed(by: CGAffineTransform(scaleX: 10, y: 10))
            if let cgImage = context.createCGImage(transformedImage, from: transformedImage.extent) {
                return UIImage(cgImage: cgImage)
            }
        }
        return nil
    }
}

#Preview {
    barcode()
}
