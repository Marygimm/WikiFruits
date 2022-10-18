//
//  ContentView.swift
//  Fructus
//
//  Created by Mary Moreira on 18/10/2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    
    @State private var isShowSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    
    //MARK: - Body

    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination:  FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                isShowSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }
                .sheet(isPresented: $isShowSettings, content: {
                    SettingsView()
                })
            )
        } //: Navigation
    }
}

//MARK: - Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
