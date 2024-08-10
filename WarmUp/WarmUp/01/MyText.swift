//
//  MyText.swift
//  WarmUp
//
//  Created by LEE JAEHA on 8/10/24.
//

import SwiftUI

struct MyText: View {
    var text: String
    var font: Font
    
    var body: some View {
        
        Text(text)
            .font(font)
            .bold()
            .padding()
    }
}

#Preview {
    MyText(text: "title1", font: .body)
}
