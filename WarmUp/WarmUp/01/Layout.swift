//
//  Layout.swift
//  WarmUp
//
//  Created by LEE JAEHA on 8/10/24.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            MyText(text: "text 1", font: .headline)
                .bold()
                .padding()
            MyText(text: "text 2", font: .system(size: 30))
                .padding()
            MyText(text: "text 3", font: .subheadline)
                .bold()
                .padding()
            
            HStack {
                MyButton(buttonTitle: "Button 1", buttonColor: .blue)
                MyButton(buttonTitle: "Button 2", buttonColor: .red)
            } 
            
            ComplexButton()
                
        }
    }
}

#Preview {
    Layout()
}
