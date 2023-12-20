//
//  LaunchScreen.swift
//  MathsBuddy
//
//  Created by Anna Busby on 20/12/2023.
//

import SwiftUI



struct LaunchScreen: View {
    
   
    
    
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
                
            }
            
            
            Spacer()
            
        }
    }
}

#Preview {
    LaunchScreen()
}
