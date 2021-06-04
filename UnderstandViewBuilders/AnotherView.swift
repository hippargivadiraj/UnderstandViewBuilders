//
//  AnotherView.swift
//  UnderstandViewBuilders
//
//  Created by Vadiraj Hippargi on 6/3/21.
//

import SwiftUI

struct AnotherView: View {
    var body: some View {
        Container {
               ZStack {
                   RoundedRectangle(cornerRadius: 20)
                       .foregroundColor(Color.purple.opacity(0.4))
                   
                   VStack  {
                       Image(systemName: "person.crop.rectangle.fill")
                           .foregroundColor(.white)
                           .font(.system(size: 200))
                           .padding()
                       
                       Text("My Photo")
                           .padding()
                   }
               }
           }
    }
}

struct AnotherView_Previews: PreviewProvider {
    static var previews: some View {
        AnotherView()
    }
}
