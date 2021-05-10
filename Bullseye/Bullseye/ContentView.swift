//
//  ContentView.swift
//  Bullseye
//
//  Created by yoosoony on 2021/04/27.
//

import SwiftUI

struct ContentView: View {
    
    //the pop up alert가 visible 여부의 상관없이 선언
    //@STATE: this code means 'we want SwiftUI to automatically recompute the body'
    //private: this variable is private to content view and other objects and other structures, should not be able to access it.
    //var: this variable means 'can be change'
    //이름 적고
    //: type
    //= value
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            Text("PUT THE BULLSEYE \nAS CLOSE AS YOU CAN DO\n🤪")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89")
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
                
            HStack {
                Text("1").bold()
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100").bold() 
            }
            Button(action: {
                print("hello, there")
                //self: this랑 비슷한 것 같아
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible,
                   content: {
                    //현재 출력되는 변수가 double형이라 소수점이 거추장스럽다.
                    var roundedValue: Int = Int(self.sliderValue.rounded())
                    return Alert(title: Text("먼지알지?"),
                    message: Text("The Slider's value is \(self.sliderValue), rounded Value is \(roundedValue)."),//period(.) end를 나타내는 듯?
                    dismissButton: .default(Text("rg!")))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
}
