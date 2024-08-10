//
//  ComplexButton.swift
//  WarmUp
//
//  Created by LEE JAEHA on 8/10/24.
//

import SwiftUI

struct ComplexButton: View {
    var body: some View {
        
        Button {
            print("123")
        } label: {
            VStack {
                Image(systemName: "pencil")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                Text("Complex Button")
                    
            }
            .padding()
            .background(.orange)
            .foregroundColor(.white)
            .cornerRadius(10)
            .bold()
        }
    }
}

#Preview {
    ComplexButton()
}
