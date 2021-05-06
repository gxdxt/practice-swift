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
                Slider(value: .constant(50.0), in: 1.0...100.0)
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
                    return Alert(title: Text("먼지알지?"),
                    message: Text("mgrg?"),
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
