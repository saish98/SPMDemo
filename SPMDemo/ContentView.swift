//
//  ContentView.swift
//  SPMDemo
//
//  Created by Saish Chachad on 21/05/25.
//

import SwiftUI
import SCLabel

struct ContentView: View {
    
    @State private var isOn: Bool = false
    
    let config = SCLabelConfiguration(
        displayModel: .init(title: "This is a SPM title", subtitle: "This is SPM subtitle"),
        theme: .init(titleFont: .title, titleColor: .pink,
                     subtitleFont: .body, subtitleColor: .purple)
    )
    
    var body: some View {
        VStack {
            SCLabelView(config: config) {
                isOn.toggle()
            }
            
            Text(isOn ? "Toggle On" : "Toggle Off")
                .font(.largeTitle)
                .foregroundColor(.red)
            
        }
    }
}

#Preview {
    ContentView()
}
