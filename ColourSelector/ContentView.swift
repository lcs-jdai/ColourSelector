//
//  ContentView.swift
//  ColourSelector
//
//  Created by Dai Jiaze on 2022-10-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            
            VStack{
                
            }
            .frame(width: 200,height: 200)
            .background(Color.blue)
            
            Text("Hue")
                .bold()
            
            Text("69.2°")
            
            Slider(value: Binding.constant(69.2),
                   in: 0...360,
                   label: {Text("hue")},
                   minimumValueLabel: {Text("0")},
                   maximumValueLabel: {Text("360")})
            
            Spacer()
            
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
