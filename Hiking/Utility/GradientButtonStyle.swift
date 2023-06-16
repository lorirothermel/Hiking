//
//  GradientButtonStyle.swift
//  Hiking
//
//  Created by Lori Rothermel on 6/16/23.
//

import Foundation
import SwiftUI


struct GradientButton: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional statement with Nil Coalescing
                // Condition ? A : B
                configuration.isPressed ?
                
                // A: When user presses the button
                LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
                
                :
                    
                // B: When the button is NOT pressed
                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
            )  // .background
            .cornerRadius(40)
    }
    
}

struct Previews_GradientButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
