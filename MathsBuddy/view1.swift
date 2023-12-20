//
//  view1.swift
//  MathsBuddy
//
//  Created by Anna Busby on 20/12/2023.
//

import SwiftUI

struct view1: View {
    @Environment(\.dismiss) var dismiss
    
    @State var firstNumber = 0
    
    @State private var tapAnimation = 0.0
    @State private var numberTapped = false
    
    let layout = [
        GridItem(.fixed(80)),
        GridItem(.fixed(80)),
        GridItem(.fixed(80))
    ]

    
    var body: some View {
        
        Button("Exit") {
            dismiss()
        }
        
        Text("What shall we practice today?")
        
        LazyVGrid(columns: layout) {
            
            ForEach(1..<13) { number in
                Button {
                    firstNumber = number
                    
                    withAnimation {
                        numberTapped = true
                    }
                    tapAnimation += 360.0
                    
                } label: {
                    Image(systemName: "\(number).circle.fill")
                        .resizable()
                        .scaledToFit()
                        .rotation3DEffect(.degrees(tapAnimation),axis: (x: 0.0, y: 1.0, z: 0.0))
                        .opacity(firstNumber != number && numberTapped ? 0.25 : 1)
                }
            }
        }
    }
}

#Preview {
    view1()
}
