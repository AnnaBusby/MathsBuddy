//
//  LaunchScreen.swift
//  MathsBuddy
//
//  Created by Anna Busby on 20/12/2023.
//

import SwiftUI



struct LaunchScreen: View {
    
   @State private var isPresented = false
    
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Welcome, I'm your")
                .font(.largeTitle)
            Text("Maths Buddy")
                .font(.largeTitle)
            
            Spacer()
            
            Button("Lets Learn") {
                
                // load the next view
                isPresented = true
                
                
            }
            .sheet(isPresented: $isPresented) {
                view1()
            }
            
            
            Spacer()
            
        }
    }
}

#Preview {
    LaunchScreen()
}
