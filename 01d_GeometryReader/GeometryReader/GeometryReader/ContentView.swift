//
//  ContentView.swift
//  GeometryReader
//
//  Created by Isaac Coleman on 7/6/21.
//  01 Day

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Geometry Reader")
            //Position using Min Mid Max Coordination
            GeometryReader { gProxy in
                Image(systemName: "arrow.up.left")
                    .position(x: gProxy.frame(in: .local).minX)
                
                Image(systemName: "arrow.up.right")
                    .position(x: gProxy.frame(in: .local).maxX)
                
                Image(systemName: "arrow.down.left")
                    .position(y: gProxy.frame(in: .local).maxY)
            }
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
            
            // Get the width and height of the space
            GeometryReader { geometryProxy in // parameter defined
                VStack { // to avoid aligning items in upper-corner
                    Text("Width: \(geometryProxy.size.width)")
                    Text("Height: \(geometryProxy.size.height)")
                    Text("maxX: \(geometryProxy.frame(in: .local).maxX)")
                    Text("midX: \(geometryProxy.frame(in: .local).midX)")
                    Text("minX: \(geometryProxy.frame(in: .local).minX)")
                    Text("midY: \(geometryProxy.frame(in: .local).midY)")
                }
//                .position(x: geometryProxy.size.width/2, y: 0)
            }
            .background(Color.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
