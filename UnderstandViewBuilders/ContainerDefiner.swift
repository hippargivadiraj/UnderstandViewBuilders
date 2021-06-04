//
//  ContainerDefiner.swift
//  UnderstandViewBuilders
//
//  Created by Vadiraj Hippargi on 6/3/21.
//

import Foundation
import SwiftUI

//THIS CONTAINER is a Background that Remains same everywhere

struct Container <Content : View> : View {
    var content : Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color.blue.opacity(0.3))
            VStack {
                Spacer()
                
                content
                    .font(.system(size: 20))
                    .foregroundColor(.secondary)
                    .padding()
                
                Spacer()
                
                Divider()
                
                HStack {
                    Button(action: {
                        // action
                    }) {
                        Image(systemName: "hand.thumbsup")
                    }.frame(width: 150)
                    
                    Divider()
                    
                    Button(action: {
                        // action
                    }) {
                        Image(systemName: "hand.thumbsdown")
                    }
                    .frame(width: 150)
                }
                .font(.system(size: 20))
                .frame(height: 50)
                .padding()
            }
        }
        .padding()

    }
}
