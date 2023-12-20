//
//  view1.swift
//  MathsBuddy
//
//  Created by Anna Busby on 20/12/2023.
//

import SwiftUI

struct view1: View {
    @State var firstNumber = 0
    
    @State private var tapAnimation = 0.0
    @State private var numberTapped = false

    
    var body: some View {
        Text("What shall we practice today?")
        
        VStack {
            HStack{
                Spacer()
                Button {
                    firstNumber = 1
                    tapAnimation = 360.0
                    numberTapped = true
                } label: {
                    Image(systemName: "1.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .rotation3DEffect(.degrees(tapAnimation),axis: (x: 0.0, y: 1.0, z: 0.0))
                        .opacity(numberTapped ? 0.25 : 1)
                }
                Spacer()
                Button {
                    firstNumber = 2
                } label: {
                    Image(systemName: "2.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .opacity(numberTapped ? 0.25 : 1)
                }
                Spacer()
                Button {
                    firstNumber = 3
                } label: {
                    Image(systemName: "3.circle.fill")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                Button {
                    firstNumber = 4
                } label: {
                    Image(systemName: "4.circle.fill")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
            }
            
            HStack {
                Spacer()
                Button {
                    firstNumber = 5
                } label: {
                    Image(systemName: "5.circle.fill")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                Button {
                    firstNumber = 6
                } label: {
                    Image(systemName: "6.circle.fill")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                Button {
                    firstNumber = 7
                } label: {
                    Image(systemName: "7.circle.fill")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                Button {
                    firstNumber = 8
                } label: {
                    Image(systemName: "8.circle.fill")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
            }
            
            HStack {
                Spacer()
                Button {
                    firstNumber = 9
                } label: {
                    Image(systemName: "9.circle.fill")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                Button {
                    firstNumber = 10
                } label: {
                    Image(systemName: "10.circle.fill")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                Button {
                    firstNumber = 11
                } label: {
                    Image(systemName: "11.circle.fill")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                Button {
                    firstNumber = 12
                } label: {
                    Image(systemName: "12.circle.fill")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
            }
        }
        .frame(maxWidth: 300, maxHeight: 400)
    }
}

#Preview {
    view1()
}
