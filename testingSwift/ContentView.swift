//
//  ContentView.swift
//  testingSwift
//
//  Created by magistra aptam on 17/06/23.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = "hello world!"
    @State var count: Int = 0
    var body: some View {
        VStack {
            Text(text)
                .bold()
                .font(.title)
            Text("count: \(count)")
            Button(action:{
                buttonPressed()
            },label: {
                Text("this is button")
                    .foregroundColor(.white)
                    .padding()
                    .cornerRadius(10)
                    .background(Color.blue)
                    .bold()
            })
            Button(action:{
                addNumber()
            },label: {
                Text("add the number")
                    .foregroundColor(.white)
                    .padding()
                    .cornerRadius(10)
                    .background(Color.blue)
                    .bold()
            })
            Button(action:{
                reset()
            },label: {
                Text("reset the number")
                    .foregroundColor(.white)
                    .padding()
                    
                    .background(Color.blue)
                    .bold()
            }).cornerRadius(10)
        }
    }
    func buttonPressed(){
        text = "button has been pressed!"
    }
    
    func addNumber(){
        count = count + 1
    }
    
    func reset(){
        count = 0
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
