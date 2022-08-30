//
//  ContentView.swift
//  SampleSwiftUIApp
//
//  Created by MacBook on 8/29/22.
//

import SwiftUI

private var colors: [Color] = [.blue, .yellow, .green]
private var gridItems = [
    GridItem(.adaptive(minimum: 50))
]

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: gridItems, spacing: 5) {
                 ForEach((0...99), id: \.self) { index in
                     CellContent(index: index,
                     color: colors[index % colors.count])
                 }
             }
             .padding(5)
         }
    }
}

struct CellContent: View {
 var index: Int
 var color: Color

 var body: some View {
 Text("\(index)")
         .frame(minWidth: 50, maxWidth: .infinity, minHeight: 50)
 .background(color)
 .cornerRadius(8)
 .font(.system(.largeTitle))
 }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
