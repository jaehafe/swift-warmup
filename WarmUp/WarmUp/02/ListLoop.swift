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

    @State var favoriteFruits = [
        Fruit(name: "Apple", matchFruitName: "banana", price: 1000),
        Fruit(name: "Banana", matchFruitName: "cherry", price: 3000),
        Fruit(name: "cherry", matchFruitName: "double kiwi", price: 4000),
        Fruit(name: "elder berry", matchFruitName: "apple", price: 2000),
    ]

    @State var fruitName: String = ""

    func deleteFruit(at offsets: IndexSet) {
        favoriteFruits.remove(atOffsets: offsets)
    }

    var body: some View {
        NavigationStack {

            VStack {

                HStack {
                    TextField("insert fruit name", text: $fruitName)
                    Button {
                        favoriteFruits.append(Fruit(name: fruitName, matchFruitName: "Apple", price: 1000))
                        fruitName = ""
                    } label: {
                        Text("insert")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }.padding()

//                List(favoriteFruits) { fruit in
//                    HStack {
//                        Text(fruit.name)
//                        Spacer()
//                        Text("\(fruit.price)원")
//                    }
//                }
                List {
                    ForEach(favoriteFruits) { fruit in
                        HStack {
                            Text(fruit.name)
                            Spacer()
                            Text("\(fruit.price)원")
                        }
                    }
//                        .onDelete(perform: deleteFruit)
                    .onDelete{ indexSet in
                        favoriteFruits.remove(atOffsets: indexSet)
                    }
                }
            }
                .navigationTitle("Fruit List")
        }
    }
}

#Preview {
    ListLoop()
}
