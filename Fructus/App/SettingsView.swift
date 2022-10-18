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
                    
                    //MARK: Section 1
                    
                    GroupBox(label:
                                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                        }
                    }
                    //MARK: Section 2

                    //MARK: Section 3

                }//: VStack
                .navigationTitle("Settings")
                .padding()
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