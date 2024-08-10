//
//  CommonText.swift
//  WarmUp
//
//  Created by LEE JAEHA on 8/10/24.
//

import SwiftUI

struct CommonText: View {
    var text: String
    var font: Font
    
    var body: some View {
        Text(text)
            .font(font)
    }
}

#Preview {
    CommonText(text: "text", font: .body)
}
