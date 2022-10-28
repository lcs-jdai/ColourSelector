//
//  ContentView.swift
//  ColourSelector
//
//  Created by Dai Jiaze on 2022-10-28.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Properties
    @State private var selectedHue = 0.0
    
    
    //MARK: Computed Properties
    
    //Interface
    var body: some View {
        
        VStack{
            
            VStack{
                
            }
            .frame(width: 200,height: 200)
            .background(Color.blue)
            
            Text("Hue")
                .bold()
            
            Text("\(selectedHue.formatted(.number.precision(.fractionLength(1))))°")
            
            Slider(value: $selectedHue,
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
