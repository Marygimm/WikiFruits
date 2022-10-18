//
//  SettingsView.swift
//  Fructus
//
//  Created by Mary Moreira on 18/10/2022.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
        
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Text("HELLO")
                }//: VStack
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(
                    trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                })
            } //: Scroll
        } //: NavigationView
    }
}

//MARK: - Preview
    
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
