//
//  ContentView.swift
//  WarmUp
//
//  Created by LEE JAEHA on 8/10/24.
//

import SwiftUI

struct ContentView: View {

    @State private var showingAlert = false
    @State private var value = 0
    let colors: [Color] = [.orange, .red, .gray, .blue,
            .green, .purple, .pink]

    func incrementStep() {
        value += 1
        if value >= colors.count { value = 0 }
    }

    func decrementStep() {
        value -= 1
        if value < 0 { value = colors.count - 1 }
    }


    var body: some View {
        VStack {

            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)

            Text("Hello world!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.center)
                .padding(.top, 13.0)

            Button("Show Alert") {
                showingAlert = true
            }
                .padding()
                .alert("알림", isPresented: $showingAlert) {
                Button("확인", role: .cancel) { }
            } message: {
                Text("버튼을 눌렀습니다!")
            }

            Stepper {
                Text("Value: \(value) Color: \(colors[value].description)")
            } onIncrement: {
                incrementStep()
            } onDecrement: {
                decrementStep()
            }
                .padding(5)
                .background(colors[value])

        }

    }
}



#Preview {
    ContentView()
}
