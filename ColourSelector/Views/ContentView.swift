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
    private var hue: Double{
        return selectedHue / 360.0
    }
    
    private var baseColour: Color{
        return Color(hue: hue,
                     saturation: 0.8,
                     brightness: 0.9)
    }
    
    private var darkerColour: Color{
        return Color(hue: hue,
                     saturation: 0.8,
                     brightness: 0.6)
    }
    
    private var evenDarkerColour: Color{
        return Color(hue: hue,
                     saturation: 0.8,
                     brightness: 0.3)
    }
    
    //Interface
    var body: some View {
        
        VStack{
            
           ColourSwatchView(colour: baseColour, size: 200)
            
            Text("Hue")
                .bold()
            
            Text("\(selectedHue.formatted(.number.precision(.fractionLength(1))))°")
                        
            Slider(value: $selectedHue,
                   in: 0...360,
                   label: {Text("hue")},
                   minimumValueLabel: {Text("0")},
                   maximumValueLabel: {Text("360")})
            
            Text("Monochromatic")
                .bold()
            
            HStack(spacing: 0){

                ColourSwatchView(colour: baseColour, size: 100)
                
                ColourSwatchView(colour: darkerColour, size: 100)
                
                ColourSwatchView(colour: evenDarkerColour, size: 100)
                
            }
            
            Spacer()
            
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
