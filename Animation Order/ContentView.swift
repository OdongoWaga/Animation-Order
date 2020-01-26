//
//  ContentView.swift
//  Animation Order
//
//  Created by JFJ on 26/01/2020.
//  Copyright © 2020 JFJ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(dragAmount)
        .gesture(
        DragGesture()
        .onChanged{self.dragAmount = $0.translation}
            .onEnded{_ in withAnimation(.spring()) { self.dragAmount = .zero} }
        )//.animation(.spring())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
