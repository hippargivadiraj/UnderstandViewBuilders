//
//  ContentView.swift
//  UnderstandViewBuilders
//
//  Created by Vadiraj Hippargi on 6/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Container{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color.red.opacity(0.4))
                VStack  {
                           
                           Text("My Photo")
                               .bold()
                               .font(.system(size: 25))
                               .padding()
                           
                           Image(systemName: "person.crop.rectangle")
                               .foregroundColor(.white)
                               .font(.system(size: 200))
                               .padding()
                           
                           Text("Photo description is here.")
                               .padding()
                           
                           Text(" ⭐️⭐️⭐️✯✮")
                       }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

////THIS CONTAINER is a Background that Remains same everywhere
//
//struct Container <Content : View> : View {
//    var content : Content
//
//    init(@ViewBuilder content: () -> Content) {
//        self.content = content()
//    }
//
//    var body: some View {
//        ZStack {
//            RoundedRectangle(cornerRadius: 20)
//                .foregroundColor(Color.blue.opacity(0.3))
//            VStack {
//                Spacer()
//
//                content
//                    .font(.system(size: 20))
//                    .foregroundColor(.secondary)
//                    .padding()
//
//                Spacer()
//
//                Divider()
//
//                HStack {
//                    Button(action: {
//                        // action
//                    }) {
//                        Image(systemName: "hand.thumbsup")
//                    }.frame(width: 150)
//
//                    Divider()
//
//                    Button(action: {
//                        // action
//                    }) {
//                        Image(systemName: "hand.thumbsdown")
//                    }
//                    .frame(width: 150)
//                }
//                .font(.system(size: 20))
//                .frame(height: 50)
//                .padding()
//            }
//        }
//        .padding()
//
//    }
//}
