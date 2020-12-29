//
//  ContentView.swift
//  GeomRead
//
//  Created by Iurie Guzun on 2020-12-26.
//  Copyright © 2020 Iurie Guzun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 10) {
                Text("Left")
                    .frame(width: geometry.size.width / 2, height: geometry.size.height)
                    .background(Color.yellow)
                Text("Right")
                    .frame(width: geometry.size.width / 2, height: 50)
                    .background(Color.orange)
            }
        }.padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
