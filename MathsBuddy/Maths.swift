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
    @State var selectedQuestions = 5
    
    var questionAmounts = [5, 10, 15, 20]
    
    @State var question = ""
    @State var correctAnswer = 0
    @State var noQuestions = 0
    
    @State var userAnswer = 0
    
    @State var score = 0
    
    var body: some View {
        
        NavigationStack {
            VStack {
                
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
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(.regularMaterial)
            .clipShape(.rect(cornerRadius: 20))
            
            Button("Lets Practice", action: nextQuestion)
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            
            Spacer()
            
            VStack {
                Text(question)
                
                TextField("", value: $userAnswer, format: .number)
                    .keyboardType(.decimalPad)
                
                Button("Submit", action: checkAnswer)
                    .buttonStyle(.borderedProminent)
                    .tint(.pink)
                    
            }
            
            Spacer()
            
            VStack {
                
                Text("Your score is:")
                Text("\(score) / \(selectedQuestions)")
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(.regularMaterial)
            .clipShape(.rect(cornerRadius: 20))
            
            
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
        question = ""
        correctAnswer = 0
        noQuestions = 0
    }
    
    func nextQuestion() {

        let x = number1 + 1
        let y = Int.random(in: 1...(number2 + 1))
        
        
        if noQuestions < selectedQuestions {
            question = "\(x) x \(y) ="
            correctAnswer = x * y
            noQuestions += 1
        } else {
            question = "Game over"
        }
        
    }
    
    func checkAnswer() {
        if userAnswer == correctAnswer {
            score += 1
        }
        
        nextQuestion()
    }
}



#Preview {
    Maths()
}
