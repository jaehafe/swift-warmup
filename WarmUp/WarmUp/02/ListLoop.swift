//
//  ListLoop.swift
//  WarmUp
//
//  Created by LEE JAEHA on 8/19/24.
//

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let name: String
    let matchFruitName: String
    let price: Int
}

struct ListLoop: View {
    
    var favoriteFruits = [
        Fruit(name: "Apple", matchFruitName: "banana", price: 1000),
        Fruit(name: "Banana", matchFruitName: "cherry", price: 3000),
        Fruit(name: "cherry", matchFruitName: "double kiwi", price: 4000),
        Fruit(name: "elder berry", matchFruitName: "apple", price: 2000),
    ]
    
    var body: some View {
        NavigationStack {
            List(favoriteFruits) { fruit in
                HStack {
                    Text(fruit.name)
                    Spacer()
                    Text("\(fruit.price)원")
                }
            }
            .navigationTitle("Fruit List")
        }
    }
}

#Preview {
    ListLoop()
}
