//
//  ContentView.swift
//  Shared
//
//  Created by Dustin Olsen on 3/17/21.
//

import SwiftUI

struct ContentView: View {
    @State private var blurAmount: CGFloat = 0 {
        didSet {
            print("new value is \(blurAmount)")
        }
    }
    var body: some View {
        let blur = Binding<CGFloat>(
            get: {
                self.blurAmount
            },
            set: {
                self.blurAmount = $0
                print("New value is \(self.blurAmount)")
            }
        )
        
        return VStack {
            Text("I bring tidings")
                .blur(radius: blurAmount)
            
            Slider(value: blur, in: 0...20)
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
