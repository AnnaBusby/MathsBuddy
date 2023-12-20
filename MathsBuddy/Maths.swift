//
//  Maths.swift
//  MathsBuddy
//
//  Created by Anna Busby on 20/12/2023.
//

import SwiftUI

struct Maths: View {
    
    @State var number1 = 0
    @State var number2 = 0
    @State var selectedQuestions = 0
    
   var questionAmounts = [5, 10, 15, 20]
    
    @State var score = 0
    
    var body: some View {
        
        NavigationStack {
            Form {
                Section("Which x's table should we practice?") {
                    Picker("Number to multiply:", selection: $number1) {
                        ForEach(1..<13) {
                            Text($0, format: .number)
                        }
                    }
                }
                
                Section("How difficult should it be?") {
                    Picker("Highest number to multiply by:", selection: $number2) {
                        ForEach(1..<13) {
                            Text($0, format: .number)
                        }
                    }
                }
                
                Section("How many questions should we practice?") {
                    Picker("Questions", selection: $selectedQuestions) {
                        ForEach(questionAmounts, id: \.self) {
                            Text($0, format: .number)
                        }
                    }
                }
                
            }
            .navigationTitle("Maths Buddy")
            .toolbar {
                Button("Reset", action: reset)
            }
        }
        
        
    }
    
    func reset() {
        score = 0
        number1 = 0
        number2 = 0
        selectedQuestions = 0
    }
}



#Preview {
    Maths()
}
