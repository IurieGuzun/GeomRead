//
//  ContentView.swift
//  GeomRead
//
//  Created by Iurie Guzun on 2020-12-26.
//  Copyright © 2020 Iurie Guzun. All rights reserved.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        VStack{
//        GeometryReader { geometry in
//            HStack(spacing: 2) {
//                Text("Left")
//                    .frame(width: geometry.size.width / 2, height: geometry.size.height / 5)
//                    .background(Color.yellow)
//                Text("Right")
//                    .frame(width: geometry.size.width / 2, height: 50)
//                    .background(Color.orange)
//            }
//        }.padding(5)
//            Text("Hello!").padding()
//    }
//    }
//}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
struct OuterView: View {
    var body: some View {
        VStack {
            Text("Top")
                .frame(width: 50, height: 100, alignment: .center)
            InnerView()
                .background(Color.green)
            Text("Bottom")
        }
    }
}

struct InnerView: View {
    var body: some View {
        HStack {
            Text("Left")
                .background(Color.blue)
                .frame(width: 50, height: 50, alignment: .top)
            GeometryReader { geo in
                VStack(alignment: .center, spacing: 100) {
                    Text("Center is the middle of Universe")
                        .background(Color.blue)
                        .onTapGesture {
                            print("Global center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .global).midY)")
                            print("Custom center: \(geo.frame(in: .named("Custom")).midX) x \(geo.frame(in: .named("Custom")).midY)")
                            print("Local center: \(geo.frame(in: .local).midX) x \(geo.frame(in: .local).midY)")
                    }
                    Text("B is the middle of Universe")
                        .background(Color.gray)
                        .onTapGesture {
                            print("Global center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .global).midY)")
                            print("Custom center: \(geo.frame(in: .named("Custom")).midX) x \(geo.frame(in: .named("Custom")).midY)")
                            print("Local center: \(geo.frame(in: .local).midX) x \(geo.frame(in: .local).midY)")
                            print("Global min: \(geo.frame(in: .global).minX) x \(geo.frame(in: .global).minY)")
                            print("Custom min: \(geo.frame(in: .named("Custom")).minX) x \(geo.frame(in: .named("Custom")).minY)")
                            print("Local min: \(geo.frame(in: .local).minX) x \(geo.frame(in: .local).minY)")
                            
                    }
                }
            }
            .background(Color.orange)
            Text("Right")
                .frame(minWidth: 30, idealWidth: 60, maxWidth: 90, minHeight: 20, idealHeight: 40, maxHeight: 200, alignment: .bottomTrailing)
        }
    }
}

struct ContentView: View {
    var body: some View {
        OuterView()
            .background(Color.red)
            .coordinateSpace(name: "Custom")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
