//
//  CommonButton.swift
//  WarmUp
//
//  Created by LEE JAEHA on 8/10/24.
//

import SwiftUI

struct CommonButton: View {
    var buttonText: String
    var buttonBgColor: Color
    var buttonColor: Color
    var buttonFont: Font
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(buttonText)
                .frame(maxWidth: .infinity)
                .padding()
                .background(buttonBgColor)
                .foregroundColor(buttonColor)
                .font(buttonFont)
                .cornerRadius(10)
        }
    }
}

#Preview {
    CommonButton(
        buttonText: "test",
        buttonBgColor: .blue,
        buttonColor: .white,
        buttonFont: .headline,
        action: { print("Button tapped") }
    )
}
